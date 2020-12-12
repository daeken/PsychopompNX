class NnPinmux_IManager: IpcService {
	func openSession(_ _0: Any?) throws -> NnPinmux_ISession { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openSession(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::pinmux::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPinmux_ISession: IpcService {
	func setPinAssignment(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getPinAssignment() throws -> Any? { throw IpcError.unimplemented }
	func setPinAssignmentForHardwareTest(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setPinAssignment(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getPinAssignment()
			om.initialize(0, 0, 0)
		
		case 2:
			try setPinAssignmentForHardwareTest(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pinmux::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}
