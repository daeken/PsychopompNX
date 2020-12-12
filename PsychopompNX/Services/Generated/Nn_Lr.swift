class NnLr_ILocationResolver: IpcService {
	func resolveProgramPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#ResolveProgramPath") }
	func redirectProgramPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#RedirectProgramPath") }
	func resolveApplicationControlPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#ResolveApplicationControlPath") }
	func resolveApplicationHtmlDocumentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#ResolveApplicationHtmlDocumentPath") }
	func resolveDataPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#ResolveDataPath") }
	func redirectApplicationControlPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#RedirectApplicationControlPath") }
	func redirectApplicationHtmlDocumentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#RedirectApplicationHtmlDocumentPath") }
	func resolveApplicationLegalInformationPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#ResolveApplicationLegalInformationPath") }
	func redirectApplicationLegalInformationPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#RedirectApplicationLegalInformationPath") }
	func refresh() throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#Refresh") }
	func setProgramNcaPath2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#SetProgramNcaPath2") }
	func clearLocationResolver2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#ClearLocationResolver2") }
	func deleteProgramNcaPath(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#DeleteProgramNcaPath") }
	func deleteControlNcaPath(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#DeleteControlNcaPath") }
	func deleteDocHtmlNcaPath(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#DeleteDocHtmlNcaPath") }
	func deleteInfoHtmlNcaPath(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolver#DeleteInfoHtmlNcaPath") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try resolveProgramPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try redirectProgramPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try resolveApplicationControlPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try resolveApplicationHtmlDocumentPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try resolveDataPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try redirectApplicationControlPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try redirectApplicationHtmlDocumentPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try resolveApplicationLegalInformationPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			try redirectApplicationLegalInformationPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try refresh()
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try setProgramNcaPath2(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try clearLocationResolver2(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try deleteProgramNcaPath(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try deleteControlNcaPath(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try deleteDocHtmlNcaPath(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try deleteInfoHtmlNcaPath(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::lr::ILocationResolver: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLr_IRegisteredLocationResolver: IpcService {
	func resolveProgramPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#ResolveProgramPath") }
	func registerProgramPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#RegisterProgramPath") }
	func unregisterProgramPath(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#UnregisterProgramPath") }
	func redirectProgramPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#RedirectProgramPath") }
	func resolveHtmlDocumentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#ResolveHtmlDocumentPath") }
	func registerHtmlDocumentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#RegisterHtmlDocumentPath") }
	func unregisterHtmlDocumentPath(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#UnregisterHtmlDocumentPath") }
	func redirectHtmlDocumentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IRegisteredLocationResolver#RedirectHtmlDocumentPath") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try resolveProgramPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try registerProgramPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unregisterProgramPath(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try redirectProgramPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try resolveHtmlDocumentPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try registerHtmlDocumentPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try unregisterHtmlDocumentPath(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try redirectHtmlDocumentPath(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::lr::IRegisteredLocationResolver: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLr_IAddOnContentLocationResolver: IpcService {
	func resolveAddOnContentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IAddOnContentLocationResolver#ResolveAddOnContentPath") }
	func registerAddOnContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IAddOnContentLocationResolver#RegisterAddOnContentStorage") }
	func unregisterAllAddOnContentPath() throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::IAddOnContentLocationResolver#UnregisterAllAddOnContentPath") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try resolveAddOnContentPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try registerAddOnContentStorage(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try unregisterAllAddOnContentPath()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::lr::IAddOnContentLocationResolver: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLr_ILocationResolverManager: IpcService {
	func openLocationResolver(_ _0: Any?) throws -> NnLr_ILocationResolver { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolverManager#OpenLocationResolver") }
	func openRegisteredLocationResolver() throws -> NnLr_IRegisteredLocationResolver { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolverManager#OpenRegisteredLocationResolver") }
	func refreshLocationResolver(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolverManager#RefreshLocationResolver") }
	func openAddOnContentLocationResolver() throws -> NnLr_IAddOnContentLocationResolver { throw IpcError.unimplemented(name: "nn::lr::nn::lr::ILocationResolverManager#OpenAddOnContentLocationResolver") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openLocationResolver(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try openRegisteredLocationResolver()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			try refreshLocationResolver(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try openAddOnContentLocationResolver()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::lr::ILocationResolverManager: \(im.commandId)")
			try! bailout()
		}
	}
}
