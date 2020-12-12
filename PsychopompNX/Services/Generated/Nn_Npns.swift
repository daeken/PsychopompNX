typealias NnNpns_NotificationToken = [UInt8]

class NnNpns_INpnsUser: IpcService {
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown5() throws -> KObject { throw IpcError.unimplemented }
	func unknown7() throws -> KObject { throw IpcError.unimplemented }
	func unknown21(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown23(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown25(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown101() throws { throw IpcError.unimplemented }
	func unknown102() throws { throw IpcError.unimplemented }
	func unknown103() throws -> Any? { throw IpcError.unimplemented }
	func unknown104(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown111(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 7:
			let ret = try unknown7()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 21:
			let ret = try unknown21(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			try unknown23(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25(nil)
			om.initialize(0, 0, 0)
		
		case 101:
			try unknown101()
			om.initialize(0, 0, 0)
		
		case 102:
			try unknown102()
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try unknown103()
			om.initialize(0, 0, 0)
		
		case 104:
			try unknown104(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 111:
			try unknown111(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::npns::INpnsUser: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNpns_INpnsSystem: IpcService {
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown5() throws -> KObject { throw IpcError.unimplemented }
	func unknown6() throws { throw IpcError.unimplemented }
	func unknown7() throws -> KObject { throw IpcError.unimplemented }
	func unknown11(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown12(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown13(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown21(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown22(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown23(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown24(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown25(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown31(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown32(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown101() throws { throw IpcError.unimplemented }
	func unknown102() throws { throw IpcError.unimplemented }
	func unknown103() throws -> Any? { throw IpcError.unimplemented }
	func unknown104(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown105() throws -> KObject { throw IpcError.unimplemented }
	func unknown111(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown112() throws { throw IpcError.unimplemented }
	func unknown113() throws { throw IpcError.unimplemented }
	func unknown114(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown115(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown201(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown202(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 6:
			try unknown6()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try unknown7()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 11:
			try unknown11(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			try unknown12(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try unknown13(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try unknown21(nil)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try unknown22(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			try unknown23(nil)
			om.initialize(0, 0, 0)
		
		case 24:
			try unknown24(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25(nil)
			om.initialize(0, 0, 0)
		
		case 31:
			try unknown31(nil)
			om.initialize(0, 0, 0)
		
		case 32:
			try unknown32(nil)
			om.initialize(0, 0, 0)
		
		case 101:
			try unknown101()
			om.initialize(0, 0, 0)
		
		case 102:
			try unknown102()
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try unknown103()
			om.initialize(0, 0, 0)
		
		case 104:
			try unknown104(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 105:
			let ret = try unknown105()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 111:
			try unknown111(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 112:
			try unknown112()
			om.initialize(0, 0, 0)
		
		case 113:
			try unknown113()
			om.initialize(0, 0, 0)
		
		case 114:
			try unknown114(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 115:
			try unknown115(im.getBuffer(0xa, 0) as Buffer<UInt8>, im.getBuffer(0xa, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 201:
			try unknown201(nil)
			om.initialize(0, 0, 0)
		
		case 202:
			try unknown202(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::npns::INpnsSystem: \(im.commandId)")
			try! bailout()
		}
	}
}
