class NnBsdsocketCfg_ServerInterface: IpcService {
	func setIfUp(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#SetIfUp") }
	func setIfUpWithEvent(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> KObject { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#SetIfUpWithEvent") }
	func cancelIf(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#CancelIf") }
	func setIfDown(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#SetIfDown") }
	func getIfState(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#GetIfState") }
	func dhcpRenew(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#DhcpRenew") }
	func addStaticArpEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#AddStaticArpEntry") }
	func removeArpEntry(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#RemoveArpEntry") }
	func lookupArpEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#LookupArpEntry") }
	func lookupArpEntry2(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#LookupArpEntry2") }
	func clearArpEntries() throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#ClearArpEntries") }
	func clearArpEntries2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#ClearArpEntries2") }
	func printArpEntries() throws { throw IpcError.unimplemented(name: "nn::bsdsocket::cfg::nn::bsdsocket::cfg::ServerInterface#PrintArpEntries") }
	
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
