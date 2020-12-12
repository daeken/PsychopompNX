class NnNfcAmDetail_IAm: IpcService {
	func initialize() throws { throw IpcError.unimplemented(name: "nn::nfc::am::detail::nn::nfc::am::detail::IAm#Initialize") }
	func finalize() throws { throw IpcError.unimplemented(name: "nn::nfc::am::detail::nn::nfc::am::detail::IAm#Finalize") }
	func notifyForegroundApplet(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::nfc::am::detail::nn::nfc::am::detail::IAm#NotifyForegroundApplet") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize()
			om.initialize(0, 0, 0)
		
		case 1:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 2:
			try notifyForegroundApplet(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nfc::am::detail::IAm: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfcAmDetail_IAmManager: IpcService {
	func createAmInterface() throws -> NnNfcAmDetail_IAm { throw IpcError.unimplemented(name: "nn::nfc::am::detail::nn::nfc::am::detail::IAmManager#CreateAmInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createAmInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfc::am::detail::IAmManager: \(im.commandId)")
			try! bailout()
		}
	}
}
