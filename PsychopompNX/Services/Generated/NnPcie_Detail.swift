class NnPcieDetail_IManager: IpcService {
	func registerClassDriver(_ _0: Any?, _ _1: KObject) throws -> (KObject, NnPcieDetail_ISession) { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::IManager#RegisterClassDriver") }
	func queryFunctionsUnregistered(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::IManager#QueryFunctionsUnregistered") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try registerClassDriver(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 1:
			let ret = try queryFunctionsUnregistered(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pcie::detail::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPcieDetail_ISession: IpcService {
	func queryFunctions(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#QueryFunctions") }
	func acquireFunction(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#AcquireFunction") }
	func releaseFunction(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#ReleaseFunction") }
	func getFunctionState(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#GetFunctionState") }
	func getBarProfile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#GetBarProfile") }
	func readConfig(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#ReadConfig") }
	func writeConfig(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#WriteConfig") }
	func readBarRegion(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#ReadBarRegion") }
	func writeBarRegion(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#WriteBarRegion") }
	func findCapability(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#FindCapability") }
	func findExtendedCapability(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#FindExtendedCapability") }
	func mapDma(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#MapDma") }
	func unmapDma(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#UnmapDma") }
	func unmapDmaBusAddress(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#UnmapDmaBusAddress") }
	func getDmaBusAddress(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#GetDmaBusAddress") }
	func getDmaBusAddressRange(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#GetDmaBusAddressRange") }
	func setDmaEnable(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#SetDmaEnable") }
	func acquireIrq(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#AcquireIrq") }
	func releaseIrq(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#ReleaseIrq") }
	func setIrqEnable(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#SetIrqEnable") }
	func setAspmEnable(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pcie::detail::nn::pcie::detail::ISession#SetAspmEnable") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try queryFunctions(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try acquireFunction(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			try releaseFunction(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try getFunctionState(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getBarProfile(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try readConfig(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try writeConfig(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try readBarRegion(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			try writeBarRegion(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try findCapability(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try findExtendedCapability(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try mapDma(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			try unmapDma(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			try unmapDmaBusAddress(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try getDmaBusAddress(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try getDmaBusAddressRange(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			try setDmaEnable(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try acquireIrq(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			try releaseIrq(nil)
			om.initialize(0, 0, 0)
		
		case 19:
			try setIrqEnable(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			try setAspmEnable(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pcie::detail::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}
