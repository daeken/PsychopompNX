class NnErptSf_IReport: IpcService {
	func open(_ _0: Any?) throws { throw IpcError.unimplemented }
	func read(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func setFlags(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getFlags() throws -> Any? { throw IpcError.unimplemented }
	func _close() throws { throw IpcError.unimplemented }
	func getSize() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try open(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try read(im.getBuffer(0x6, 0) as Buffer<UInt8>)
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

class NnErptSf_IContext: IpcService {
	func submitContext(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func createReport(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown3() throws { throw IpcError.unimplemented }
	func unknown4() throws { throw IpcError.unimplemented }
	func unknown5() throws { throw IpcError.unimplemented }
	func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try submitContext(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try createReport(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>, im.getBuffer(0x5, 2) as Buffer<UInt8>)
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

class NnErptSf_IManager: IpcService {
	func getReportList(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getEvent() throws -> KObject { throw IpcError.unimplemented }
	func unknown2() throws { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try getReportList(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
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

class NnErptSf_ISession: IpcService {
	func openReport() throws -> NnErptSf_IReport { throw IpcError.unimplemented }
	func openManager() throws -> NnErptSf_IManager { throw IpcError.unimplemented }
	
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
