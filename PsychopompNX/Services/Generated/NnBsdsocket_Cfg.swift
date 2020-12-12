class NnBsdsocketCfg_ServerInterface: IpcService {
	func setIfUp(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setIfUpWithEvent(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> KObject { throw IpcError.unimplemented }
	func cancelIf(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setIfDown(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getIfState(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func dhcpRenew(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func addStaticArpEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func removeArpEntry(_ _0: Any?) throws { throw IpcError.unimplemented }
	func lookupArpEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func lookupArpEntry2(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func clearArpEntries() throws { throw IpcError.unimplemented }
	func clearArpEntries2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func printArpEntries() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setIfUp(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try setIfUpWithEvent(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			try cancelIf(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try setIfDown(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try getIfState(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try dhcpRenew(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try addStaticArpEntry(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try removeArpEntry(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			try lookupArpEntry(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try lookupArpEntry2(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try clearArpEntries()
			om.initialize(0, 0, 0)
		
		case 11:
			try clearArpEntries2(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			try printArpEntries()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bsdsocket::cfg::ServerInterface: \(im.commandId)")
			try! bailout()
		}
	}
}
