class NnNewsDetailIpc_IServiceCreator: IpcService {
	func unknown0() throws -> NnNewsDetailIpc_INewsService { throw IpcError.unimplemented }
	func unknown1() throws -> NnNewsDetailIpc_INewlyArrivedEventHolder { throw IpcError.unimplemented }
	func unknown2() throws -> NnNewsDetailIpc_INewsDataService { throw IpcError.unimplemented }
	func unknown3() throws -> NnNewsDetailIpc_INewsDatabaseService { throw IpcError.unimplemented }
	func unknown4() throws -> NnNewsDetailIpc_IOverwriteEventHolder { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try unknown1()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try unknown2()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try unknown3()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try unknown4()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::news::detail::ipc::IServiceCreator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNewsDetailIpc_INewsDataService: IpcService {
	func unknown0(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown3() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::news::detail::ipc::INewsDataService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNewsDetailIpc_INewsDatabaseService: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown5(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::news::detail::ipc::INewsDatabaseService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNewsDetailIpc_INewlyArrivedEventHolder: IpcService {
	func unknown0() throws -> KObject { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::news::detail::ipc::INewlyArrivedEventHolder: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNewsDetailIpc_IOverwriteEventHolder: IpcService {
	func unknown0() throws -> KObject { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::news::detail::ipc::IOverwriteEventHolder: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNewsDetailIpc_INewsService: IpcService {
	func unknown10100(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown20100(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown30100(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown30101(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown30200() throws -> Any? { throw IpcError.unimplemented }
	func unknown30300(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown30400(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown30900() throws -> NnNewsDetailIpc_INewlyArrivedEventHolder { throw IpcError.unimplemented }
	func unknown30901() throws -> NnNewsDetailIpc_INewsDataService { throw IpcError.unimplemented }
	func unknown30902() throws -> NnNewsDetailIpc_INewsDatabaseService { throw IpcError.unimplemented }
	func unknown40100(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown40101(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown40200() throws { throw IpcError.unimplemented }
	func unknown40201() throws { throw IpcError.unimplemented }
	func unknown90100(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 10100:
			try unknown10100(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20100:
			try unknown20100(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 30100:
			let ret = try unknown30100(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 30101:
			let ret = try unknown30101(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 30200:
			let ret = try unknown30200()
			om.initialize(0, 0, 0)
		
		case 30300:
			try unknown30300(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 30400:
			let ret = try unknown30400(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 30900:
			let ret = try unknown30900()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 30901:
			let ret = try unknown30901()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 30902:
			let ret = try unknown30902()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 40100:
			try unknown40100(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 40101:
			try unknown40101(nil)
			om.initialize(0, 0, 0)
		
		case 40200:
			try unknown40200()
			om.initialize(0, 0, 0)
		
		case 40201:
			try unknown40201()
			om.initialize(0, 0, 0)
		
		case 90100:
			let ret = try unknown90100(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::news::detail::ipc::INewsService: \(im.commandId)")
			try! bailout()
		}
	}
}
