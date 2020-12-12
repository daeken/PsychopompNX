class NnFgmSf_IRequest: IpcService {
	func initialize(_ _0: NnFgm_Module, _ _1: UInt64, _ _2: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::IRequest#Initialize") }
	func set(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::IRequest#Set") }
	func get() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::IRequest#Get") }
	func cancel() throws { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::IRequest#Cancel") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try set(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try get()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try cancel()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fgm::sf::IRequest: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFgmSf_IDebugger: IpcService {
	func initialize(_ _0: UInt64, _ _1: KObject) throws -> KObject { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::IDebugger#Initialize") }
	func read(_ _0: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::IDebugger#Read") }
	func cancel() throws { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::IDebugger#Cancel") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			let (_0, _1, _2) = try read(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 12)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		case 2:
			try cancel()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fgm::sf::IDebugger: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFgmSf_ISession: IpcService {
	func initialize() throws -> NnFgmSf_IRequest { throw IpcError.unimplemented(name: "nn::fgm::sf::nn::fgm::sf::ISession#Initialize") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::fgm::sf::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}
