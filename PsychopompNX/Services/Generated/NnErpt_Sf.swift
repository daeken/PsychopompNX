class NnErptSf_IReport: IpcService {
	func open(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#Open") }
	func read(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#Read") }
	func setFlags(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#SetFlags") }
	func getFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#GetFlags") }
	func _close() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#Close") }
	func getSize() throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#GetSize") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try open(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try read(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try setFlags(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getFlags()
			om.initialize(0, 0, 0)
		
		case 4:
			try _close()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getSize()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::erpt::sf::IReport: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnErptSf_IReport_Impl: NnErptSf_IReport {
	override func open(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#Open") }
	override func read(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#Read") }
	override func setFlags(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#SetFlags") }
	override func getFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#GetFlags") }
	override func _close() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#Close") }
	override func getSize() throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IReport#GetSize") }
}
*/

class NnErptSf_IContext: IpcService {
	func submitContext(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#SubmitContext") }
	func createReport(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#CreateReport") }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown3") }
	func unknown4() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown4") }
	func unknown5() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown5") }
	func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown6") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try submitContext(im.getBuffer(0x5, 0)! as Buffer<UInt8>, im.getBuffer(0x5, 1)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try createReport(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>, im.getBuffer(0x5, 1)! as Buffer<UInt8>, im.getBuffer(0x5, 2)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::erpt::sf::IContext: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnErptSf_IContext_Impl: NnErptSf_IContext {
	override func submitContext(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#SubmitContext") }
	override func createReport(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#CreateReport") }
	override func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown2") }
	override func unknown3() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown3") }
	override func unknown4() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown4") }
	override func unknown5() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown5") }
	override func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IContext#Unknown6") }
}
*/

class NnErptSf_IManager: IpcService {
	func getReportList(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#GetReportList") }
	func getEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#GetEvent") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#Unknown2") }
	func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#Unknown3") }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#Unknown4") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try getReportList(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::erpt::sf::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnErptSf_IManager_Impl: NnErptSf_IManager {
	override func getReportList(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#GetReportList") }
	override func getEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#GetEvent") }
	override func unknown2() throws { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#Unknown2") }
	override func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#Unknown3") }
	override func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::IManager#Unknown4") }
}
*/

class NnErptSf_ISession: IpcService {
	func openReport() throws -> NnErptSf_IReport { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::ISession#OpenReport") }
	func openManager() throws -> NnErptSf_IManager { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::ISession#OpenManager") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openReport()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try openManager()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::erpt::sf::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnErptSf_ISession_Impl: NnErptSf_ISession {
	override func openReport() throws -> NnErptSf_IReport { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::ISession#OpenReport") }
	override func openManager() throws -> NnErptSf_IManager { throw IpcError.unimplemented(name: "nn::erpt::sf::nn::erpt::sf::ISession#OpenManager") }
}
*/
