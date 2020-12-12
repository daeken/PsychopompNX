class NnSocketResolver_IResolver: IpcService {
	func setDnsAddressesPrivate(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#SetDnsAddressesPrivate") }
	func getDnsAddressPrivate(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetDnsAddressPrivate") }
	func getHostByName(_ _0: UInt8, _ _1: UInt32, _ _2: UInt64, _ _3: Pid, _ _4: Buffer<UInt8>, _ _5: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetHostByName") }
	func getHostByAddr(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt64, _ _4: Pid, _ _5: Buffer<UInt8>, _ _6: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetHostByAddr") }
	func getHostStringError(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetHostStringError") }
	func getGaiStringError(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetGaiStringError") }
	func getAddrInfo(_ enable_nsd_resolve: Bool, _ _1: UInt32, _ pid_placeholder: UInt64, _ _3: Pid, _ host: Buffer<Int8>, _ service: Buffer<Int8>, _ hints: Buffer<Packed_Addrinfo>, _ response: Buffer<Packed_Addrinfo>) throws -> (ret: Int32, bsd_errno: UInt32, packed_addrinfo_size: UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetAddrInfo") }
	func getNameInfo(_ _0: UInt32, _ _1: UInt32, _ _2: UInt64, _ _3: Pid, _ _4: Buffer<UInt8>, _ _5: Buffer<UInt8>, _ _6: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetNameInfo") }
	func requestCancelHandle(_ _0: UInt64, _ _1: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#RequestCancelHandle") }
	func cancelSocketCall(_ _0: UInt32, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#CancelSocketCall") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setDnsAddressesPrivate(im.getData(8) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try getDnsAddressPrivate(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let (_0, _1, _2) = try getHostByName(im.getData(8) as UInt8, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 12)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		case 3:
			let (_0, _1, _2) = try getHostByAddr(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(24) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 12)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		case 4:
			try getHostStringError(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try getGaiStringError(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			let (_0, _1, _2) = try getAddrInfo(im.getData(8) as Bool, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<Int8>, im.getBuffer(0x5, 1) as Buffer<Int8>, im.getBuffer(0x5, 2) as Buffer<Packed_Addrinfo>, im.getBuffer(0x6, 0) as Buffer<Packed_Addrinfo>)
			om.initialize(0, 0, 12)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		case 7:
			let (_0, _1) = try getNameInfo(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>, im.getBuffer(0x6, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 8:
			let ret = try requestCancelHandle(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			try cancelSocketCall(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::socket::resolver::IResolver: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSocketResolver_IResolver_Impl: NnSocketResolver_IResolver {
	override func setDnsAddressesPrivate(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#SetDnsAddressesPrivate") }
	override func getDnsAddressPrivate(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetDnsAddressPrivate") }
	override func getHostByName(_ _0: UInt8, _ _1: UInt32, _ _2: UInt64, _ _3: Pid, _ _4: Buffer<UInt8>, _ _5: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetHostByName") }
	override func getHostByAddr(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt64, _ _4: Pid, _ _5: Buffer<UInt8>, _ _6: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetHostByAddr") }
	override func getHostStringError(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetHostStringError") }
	override func getGaiStringError(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetGaiStringError") }
	override func getAddrInfo(_ enable_nsd_resolve: Bool, _ _1: UInt32, _ pid_placeholder: UInt64, _ _3: Pid, _ host: Buffer<Int8>, _ service: Buffer<Int8>, _ hints: Buffer<Packed_Addrinfo>, _ response: Buffer<Packed_Addrinfo>) throws -> (ret: Int32, bsd_errno: UInt32, packed_addrinfo_size: UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetAddrInfo") }
	override func getNameInfo(_ _0: UInt32, _ _1: UInt32, _ _2: UInt64, _ _3: Pid, _ _4: Buffer<UInt8>, _ _5: Buffer<UInt8>, _ _6: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#GetNameInfo") }
	override func requestCancelHandle(_ _0: UInt64, _ _1: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#RequestCancelHandle") }
	override func cancelSocketCall(_ _0: UInt32, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::socket::resolver::nn::socket::resolver::IResolver#CancelSocketCall") }
}
*/
