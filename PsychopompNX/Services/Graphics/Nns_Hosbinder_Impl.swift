//
//  Nns_Hosbinder_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation

class NnsHosbinder_IHOSBinderDriver_Impl: NnsHosbinder_IHOSBinderDriver {
    override func transactParcel(_ id: Int32, _ code: UInt32, _ parcel_data: Buffer<UInt8>, _ flags: UInt32, _ parcel_reply: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#TransactParcel") }
    
    override func adjustRefcount(_ id: Int32, _ addVal: Int32, _ type: Int32) throws { }
    
    override func getNativeHandle(_ id: Int32, _ _1: UInt32) throws -> KObject { KEvent() }
    
    override func transactParcelAuto(_ id: Int32, _ code: UInt32, _ parcel_data: Buffer<UInt8>, _ flags: UInt32, _ parcel_reply: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#TransactParcelAuto") }
}
