//
//  IpcManager.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/9/20.
//

import Foundation

typealias Pid = UInt64

enum IpcError: Error {
    case unimplemented(name: String)
    case byteCountMismatch
}

class IncomingMessage {
    let bbuf: [UInt8]
    let buf: [UInt32]
    let isDomainObject: Bool
    let type: Int
    let commandId: UInt32
    let aCount, bCount, xCount, moveCount, copyCount: Int
    let pid: Pid
    let hasC, hasPid: Bool
    let domainHandle, domainCommand: UInt32
    let wLen, rawOffset, sfciOffset, descOffset, copyOffset, moveOffset: Int

    init(_ buffer: [UInt8], _ isDomainObject: Bool) {
        bbuf = buffer
        buf = buffer.withUnsafeBufferPointer(of: UInt32.self) { Array($0) }
        self.isDomainObject = isDomainObject
        let type = Int(buf[0] & 0xFFFF)
        self.type = type
        xCount = Int((buf[0] >> 16) & 0xF)
        aCount = Int((buf[0] >> 20) & 0xF)
        bCount = Int((buf[0] >> 24) & 0xF)
        wLen = Int(buf[1] & 0x3FF)
        hasC = ((buf[1] >> 10) & 0x3) != 0

        var pos = 2
        if ((buf[1] >> 31) & 1) != 0 {
            let hd = buf[pos]
            pos += 1
            hasPid = (hd & 1) != 0
            copyCount = Int((hd >> 1) & 0xF)
            moveCount = Int(hd >> 5)
            if hasPid {
                pid = Pid(buf[pos]) | (UInt64(buf[pos + 1]) << 32)
                pos += 2
            } else {
                pid = Pid(0)
            }
            copyOffset = pos * 4
            pos += copyCount
            moveOffset = pos * 4
            pos += moveCount
        } else {
            hasPid = false
            pid = Pid(0)
            copyCount = 0
            moveCount = 0
            copyOffset = 0
            moveOffset = 0
        }

        descOffset = pos * 4

        pos += xCount * 2
        pos += aCount * 3
        pos += bCount * 3
        rawOffset = pos * 4

        if (pos & 3) != 0 {
            pos += 4 - (pos & 3)
        }

        if isDomainObject && type == 4 {
            domainHandle = buf[pos + 1]
            domainCommand = buf[pos] & 0xFF
            pos += 4
        } else {
            domainHandle = 0
            domainCommand = 0
        }

        sfciOffset = pos * 4
        commandId = buf[pos + 2]

        assert(type == 2 || (isDomainObject && domainCommand == 2) || buf[pos] == 0x49434653)
    }
    
    func getCopy(_ number: Int) -> UInt32 {
        buf[(copyOffset >> 2) + number]
    }

    func getMove(_ number: Int) -> UInt32 {
        isDomainObject ? buf[(sfciOffset >> 2) + 4 + number] : buf[(moveOffset >> 2) + number]
    }

    func getData<T>(_ offset: Int) -> T {
        buf.getValueAtOffset(of: T.self, offset: sfciOffset + 8 + offset)
    }
    
    func getBytes(_ offset: Int, _ count: Int) -> [UInt8] {
        Array(bbuf[sfciOffset + 8 + offset ..< sfciOffset + 8 + offset + count])
    }
    
    func getBuffer<T>(_ type: Int, _ number: Int) -> Buffer<T> {
        Buffer<T>()
    }
}

class OutgoingMessage {
    var buf = [UInt32](repeating: 0, count: 0x100 >> 2)
    let inBuf: [UInt32]
    let isDomainObject: Bool
    let domainOwner: IpcService?
    let incomingMessage: IncomingMessage

    var sfcoOffset = 0, realDataOffset = 0, copyCount = 0
    var errCode: UInt32 = 0

    init(_ buffer: [UInt8], _ domainOwner: IpcService?, _ incomingMessage: IncomingMessage) {
        inBuf = buffer.withUnsafeBufferPointer(of: UInt32.self) {
            Array($0)
        }
        self.isDomainObject = domainOwner != nil
        self.domainOwner = domainOwner
        self.incomingMessage = incomingMessage
    }

    func initialize(_ moveCount: Int, _ copyCount: Int, _ dataBytes: Int) {
        self.copyCount = copyCount
        buf[1] = UInt32(moveCount != 0 && !isDomainObject || copyCount != 0 ? 1 << 31 : 0)
        buf[2] = UInt32((copyCount << 1) | ((isDomainObject ? 0 : moveCount) << 5))

        var pos = 2 + (moveCount != 0 && !isDomainObject || copyCount != 0 ? 1 + moveCount + copyCount : 0)
        if (pos & 3) != 0 {
            pos += 4 - (pos & 3)
        }
        if isDomainObject {
            buf[pos] = UInt32(moveCount)
            pos += 4
        }

        realDataOffset = isDomainObject ? moveCount << 2 : 0

        let dataWords = (realDataOffset >> 2) + (dataBytes & 3) != 0 ? (dataBytes >> 2) + 1 : dataBytes >> 2

        buf[1] |= UInt32(4 + (isDomainObject ? 4 : 0) + 4 + dataWords)

        sfcoOffset = pos * 4
        buf[pos] = 0x4f434653 // SFCO
    }

    func bake() {
        buf[(sfcoOffset >> 2) + 2] = errCode
    }
    
    func setData<T>(_ offset: Int, _ value: T) {
        buf.setValueAtOffset(offset: sfcoOffset + 8 + offset + (offset < 8 ? 0 : realDataOffset), value: value)
    }
    
    func setBytes(_ offset: Int, _ value: [UInt8]) {
        try! bailout()
    }
    
    func copy(_ number: Int, _ obj: KObject) {
        buf[3 + number] = obj.handle
    }
    
    func move(_ number: Int, _ obj: KObject) {
        if isDomainObject {
            buf[(sfcoOffset >> 2) + 4 + number] = domainOwner!.assignHandle(obj)
        } else {
            buf[3 + copyCount + number] = obj.handle
        }
    }
}

class Buffer<T> {
}

class IpcService: KObject {
    var isDomainObject = false
    var domainOwner: IpcService? = nil
    var domainHandleIter: UInt32 = 0xf001
    let thisHandle: UInt32 = 0xf000
    var domainHandles = [UInt32: KObject]()
    var domainHandleMap = [UInt32: UInt32]()
    
    func assignHandle(_ object: KObject) -> UInt32 {
        let handle = domainHandleIter
        domainHandleIter += 1
        domainHandles[handle] = object
        return handle
    }

    func handleMessage(_ bufAddr: UInt64) throws -> (ret: UInt32, closeHandle: Bool) {
        let tptr = GuestPointer<UInt8>(bufAddr)
        let buffer = tptr[0..<0x100]
        hexdump(buffer)

        let im = IncomingMessage(buffer, isDomainObject)
        let om = OutgoingMessage(buffer, isDomainObject ? self : nil, im)
        var ret: UInt32 = 0xf601
        var closeHandle = false
        var target = self

        if isDomainObject && im.domainHandle != thisHandle && im.type == 4 {
            target = domainHandles[im.domainHandle]! as! IpcService
        }

        if !isDomainObject || im.domainCommand == 1 || im.type == 2 || im.type == 5 {
            switch im.type {
            case 2:
                closeHandle = true
                om.initialize(0, 0, 0)
                ret = 0x25a0b
            case 4:
                print("IPC command \(im.commandId) for \(target)")
                do {
                    try target.dispatch(im, om)
                    ret = 0
                } catch {
                    print("Unhandled IPC error: \(error)")
                    try! bailout()
                }
            case 5, 7:
                switch im.commandId {
                case 0: // ConvertSessionToDomain
                    print("Converting session to domain for \(self)")
                    om.initialize(0, 0, 4)
                    isDomainObject = true
                    om.setData(8, thisHandle)
                case 3: // QueryPointerBufferSize
                    om.initialize(0, 0, 4)
                    om.setData(8, UInt32(0x500))
                default:
                    print("Unhandled meta command: \(im.commandId)")
                    try! bailout()
                }
                ret = 0
            default:
                print("Unhandled IPC type: \(im.type)")
                try! bailout()
            }
        } else {
            switch im.domainCommand {
            default:
                print("Unhandled domain command: \(im.domainCommand)")
                try! bailout()
            }
        }

        if ret == 0 {
            om.bake()
        }
        (tptr.to() as GuestPointer<UInt32>)[0..<0x40] = om.buf
        let buf2 = tptr[0..<0x100]
        hexdump(buf2)

        return (ret, closeHandle)
    }

    func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
        try! bailout()
    }
}
