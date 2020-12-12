class NnLblDetail_ILblController: IpcService {
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown3() throws -> Any? { throw IpcError.unimplemented }
	func unknown4() throws { throw IpcError.unimplemented }
	func unknown5() throws -> Any? { throw IpcError.unimplemented }
	func turnOnBacklight(_ _0: Any?) throws { throw IpcError.unimplemented }
	func turnOffBacklight(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getBacklightStatus() throws -> Any? { throw IpcError.unimplemented }
	func unknown9() throws { throw IpcError.unimplemented }
	func unknown10() throws { throw IpcError.unimplemented }
	func unknown11() throws -> Any? { throw IpcError.unimplemented }
	func unknown12() throws { throw IpcError.unimplemented }
	func unknown13() throws { throw IpcError.unimplemented }
	func unknown14() throws -> Any? { throw IpcError.unimplemented }
	func unknown15(_ _0: Any?) throws { throw IpcError.unimplemented }
	func readRawLightSensor() throws -> Any? { throw IpcError.unimplemented }
	func unknown17(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown18(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown19(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown20() throws -> Any? { throw IpcError.unimplemented }
	func unknown21(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown22() throws -> Any? { throw IpcError.unimplemented }
	func unknown23() throws -> Any? { throw IpcError.unimplemented }
	func unknown24(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown25() throws -> Any? { throw IpcError.unimplemented }
	func enableVrMode() throws { throw IpcError.unimplemented }
	func disableVrMode() throws { throw IpcError.unimplemented }
	func getVrMode() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5()
			om.initialize(0, 0, 0)
		
		case 6:
			try turnOnBacklight(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try turnOffBacklight(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getBacklightStatus()
			om.initialize(0, 0, 0)
		
		case 9:
			try unknown9()
			om.initialize(0, 0, 0)
		
		case 10:
			try unknown10()
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11()
			om.initialize(0, 0, 0)
		
		case 12:
			try unknown12()
			om.initialize(0, 0, 0)
		
		case 13:
			try unknown13()
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14()
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try readRawLightSensor()
			om.initialize(0, 0, 0)
		
		case 17:
			try unknown17(nil)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try unknown18(nil)
			om.initialize(0, 0, 0)
		
		case 19:
			try unknown19(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try unknown20()
			om.initialize(0, 0, 0)
		
		case 21:
			try unknown21(nil)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try unknown22()
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try unknown23()
			om.initialize(0, 0, 0)
		
		case 24:
			try unknown24(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25()
			om.initialize(0, 0, 0)
		
		case 26:
			try enableVrMode()
			om.initialize(0, 0, 0)
		
		case 27:
			try disableVrMode()
			om.initialize(0, 0, 0)
		
		case 28:
			let ret = try getVrMode()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::lbl::detail::ILblController: \(im.commandId)")
			try! bailout()
		}
	}
}
