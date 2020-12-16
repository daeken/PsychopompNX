class NnPcvDetail_IPcvService: IpcService {
	func setPowerEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetPowerEnabled") }
	func setClockEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetClockEnabled") }
	func setClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetClockRate") }
	func getClockRate(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetClockRate") }
	func getState(_ _0: UInt32) throws -> NnPcv_ModuleState { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetState") }
	func getPossibleClockRates(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt32>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetPossibleClockRates") }
	func setMinVClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetMinVClockRate") }
	func setReset(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetReset") }
	func setVoltageEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetVoltageEnabled") }
	func getVoltageEnabled(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetVoltageEnabled") }
	func getVoltageRange(_ _0: UInt32) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetVoltageRange") }
	func setVoltageValue(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetVoltageValue") }
	func getVoltageValue(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetVoltageValue") }
	func getTemperatureThresholds(_ _0: UInt32, _ _1: Buffer<NnPcv_TemperatureThreshold>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetTemperatureThresholds") }
	func setTemperature(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetTemperature") }
	func initialize() throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#Initialize") }
	func isInitialized() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#IsInitialized") }
	func finalize() throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#Finalize") }
	func powerOn(_ _0: NnPcv_PowerControlTarget, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#PowerOn") }
	func powerOff(_ _0: NnPcv_PowerControlTarget) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#PowerOff") }
	func changeVoltage(_ _0: NnPcv_PowerControlTarget, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#ChangeVoltage") }
	func getPowerClockInfoEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetPowerClockInfoEvent") }
	func getOscillatorClock() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetOscillatorClock") }
	func getDvfsTable(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt32>, _ _3: Buffer<UInt32>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetDvfsTable") }
	func getModuleStateTable(_ _0: UInt32, _ _1: Buffer<NnPcv_ModuleState>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetModuleStateTable") }
	func getPowerDomainStateTable(_ _0: UInt32, _ _1: Buffer<NnPcv_PowerDomainState>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetPowerDomainStateTable") }
	func getFuseInfo(_ _0: UInt32, _ _1: Buffer<UInt32>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetFuseInfo") }
	
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
			let (_0, _1) = try getPossibleClockRates(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0xa, 0)! as Buffer<UInt32>)
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
			let ret = try getTemperatureThresholds(im.getData(8) as UInt32, im.getBuffer(0xa, 0)! as Buffer<NnPcv_TemperatureThreshold>)
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
			let ret = try getDvfsTable(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0xa, 0)! as Buffer<UInt32>, im.getBuffer(0xa, 1)! as Buffer<UInt32>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 24:
			let ret = try getModuleStateTable(im.getData(8) as UInt32, im.getBuffer(0xa, 0)! as Buffer<NnPcv_ModuleState>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 25:
			let ret = try getPowerDomainStateTable(im.getData(8) as UInt32, im.getBuffer(0xa, 0)! as Buffer<NnPcv_PowerDomainState>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 26:
			let ret = try getFuseInfo(im.getData(8) as UInt32, im.getBuffer(0xa, 0)! as Buffer<UInt32>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::pcv::detail::IPcvService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPcvDetail_IPcvService_Impl: NnPcvDetail_IPcvService {
	override func setPowerEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetPowerEnabled") }
	override func setClockEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetClockEnabled") }
	override func setClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetClockRate") }
	override func getClockRate(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetClockRate") }
	override func getState(_ _0: UInt32) throws -> NnPcv_ModuleState { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetState") }
	override func getPossibleClockRates(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt32>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetPossibleClockRates") }
	override func setMinVClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetMinVClockRate") }
	override func setReset(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetReset") }
	override func setVoltageEnabled(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetVoltageEnabled") }
	override func getVoltageEnabled(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetVoltageEnabled") }
	override func getVoltageRange(_ _0: UInt32) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetVoltageRange") }
	override func setVoltageValue(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetVoltageValue") }
	override func getVoltageValue(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetVoltageValue") }
	override func getTemperatureThresholds(_ _0: UInt32, _ _1: Buffer<NnPcv_TemperatureThreshold>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetTemperatureThresholds") }
	override func setTemperature(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#SetTemperature") }
	override func initialize() throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#Initialize") }
	override func isInitialized() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#IsInitialized") }
	override func finalize() throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#Finalize") }
	override func powerOn(_ _0: NnPcv_PowerControlTarget, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#PowerOn") }
	override func powerOff(_ _0: NnPcv_PowerControlTarget) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#PowerOff") }
	override func changeVoltage(_ _0: NnPcv_PowerControlTarget, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#ChangeVoltage") }
	override func getPowerClockInfoEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetPowerClockInfoEvent") }
	override func getOscillatorClock() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetOscillatorClock") }
	override func getDvfsTable(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt32>, _ _3: Buffer<UInt32>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetDvfsTable") }
	override func getModuleStateTable(_ _0: UInt32, _ _1: Buffer<NnPcv_ModuleState>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetModuleStateTable") }
	override func getPowerDomainStateTable(_ _0: UInt32, _ _1: Buffer<NnPcv_PowerDomainState>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetPowerDomainStateTable") }
	override func getFuseInfo(_ _0: UInt32, _ _1: Buffer<UInt32>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pcv::detail::nn::pcv::detail::IPcvService#GetFuseInfo") }
}
*/
