class NnPcvDetail_IPcvService: IpcService {
	func setPowerEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func setClockEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func setClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getClockRate(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func getState(_ _0: UInt32) throws -> NnPcv_ModuleState { throw IpcError.unimplemented }
	func getPossibleClockRates(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt32>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func setMinVClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func setReset(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func setVoltageEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getVoltageEnabled(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented }
	func getVoltageRange(_ _0: UInt32) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented }
	func setVoltageValue(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getVoltageValue(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func getTemperatureThresholds(_ _0: UInt32, _ _1: Buffer<NnPcv_TemperatureThreshold>) throws -> UInt32 { throw IpcError.unimplemented }
	func setTemperature(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func initialize() throws { throw IpcError.unimplemented }
	func isInitialized() throws -> UInt8 { throw IpcError.unimplemented }
	func finalize() throws { throw IpcError.unimplemented }
	func powerOn(_ _0: NnPcv_PowerControlTarget, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func powerOff(_ _0: NnPcv_PowerControlTarget) throws { throw IpcError.unimplemented }
	func changeVoltage(_ _0: NnPcv_PowerControlTarget, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getPowerClockInfoEvent() throws -> KObject { throw IpcError.unimplemented }
	func getOscillatorClock() throws -> UInt32 { throw IpcError.unimplemented }
	func getDvfsTable(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt32>, _ _3: Buffer<UInt32>) throws -> UInt32 { throw IpcError.unimplemented }
	func getModuleStateTable(_ _0: UInt32, _ _1: Buffer<NnPcv_ModuleState>) throws -> UInt32 { throw IpcError.unimplemented }
	func getPowerDomainStateTable(_ _0: UInt32, _ _1: Buffer<NnPcv_PowerDomainState>) throws -> UInt32 { throw IpcError.unimplemented }
	func getFuseInfo(_ _0: UInt32, _ _1: Buffer<UInt32>) throws -> UInt32 { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setPowerEnabled(im.getData(8) as UInt8, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			try setClockEnabled(im.getData(8) as UInt8, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 2:
			try setClockRate(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getClockRate(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try getState(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 5:
			let (_0, _1) = try getPossibleClockRates(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0xa, 0) as Buffer<UInt32>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 6:
			try setMinVClockRate(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 7:
			try setReset(im.getData(8) as UInt8, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 8:
			try setVoltageEnabled(im.getData(8) as UInt8, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getVoltageEnabled(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 10:
			let (_0, _1, _2) = try getVoltageRange(im.getData(8) as UInt32)
			om.initialize(0, 0, 12)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		case 11:
			try setVoltageValue(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getVoltageValue(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 13:
			let ret = try getTemperatureThresholds(im.getData(8) as UInt32, im.getBuffer(0xa, 0) as Buffer<NnPcv_TemperatureThreshold>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 14:
			try setTemperature(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 15:
			try initialize()
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try isInitialized()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 17:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 18:
			try powerOn(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 19:
			try powerOff(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 20:
			try changeVoltage(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try getPowerClockInfoEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 22:
			let ret = try getOscillatorClock()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			let ret = try getDvfsTable(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0xa, 0) as Buffer<UInt32>, im.getBuffer(0xa, 1) as Buffer<UInt32>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 24:
			let ret = try getModuleStateTable(im.getData(8) as UInt32, im.getBuffer(0xa, 0) as Buffer<NnPcv_ModuleState>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 25:
			let ret = try getPowerDomainStateTable(im.getData(8) as UInt32, im.getBuffer(0xa, 0) as Buffer<NnPcv_PowerDomainState>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 26:
			let ret = try getFuseInfo(im.getData(8) as UInt32, im.getBuffer(0xa, 0) as Buffer<UInt32>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::pcv::detail::IPcvService: \(im.commandId)")
			try! bailout()
		}
	}
}
