class NnTimesrvDetailService_ISystemClock: IpcService {
	func getCurrentTime() throws -> NnTime_PosixTime { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISystemClock#GetCurrentTime") }
	func setCurrentTime(_ _0: NnTime_PosixTime) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISystemClock#SetCurrentTime") }
	func getSystemClockContext() throws -> NnTime_SystemClockContext { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISystemClock#GetSystemClockContext") }
	func setSystemClockContext(_ _0: NnTime_SystemClockContext) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISystemClock#SetSystemClockContext") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getCurrentTime()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1:
			try setCurrentTime(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getSystemClockContext()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 3:
			try setSystemClockContext(im.getBytes(8, 0x20))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::timesrv::detail::service::ISystemClock: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnTimesrvDetailService_ISteadyClock: IpcService {
	func getCurrentTimePoint() throws -> NnTime_SteadyClockTimePoint { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#GetCurrentTimePoint") }
	func getTestOffset() throws -> Nn_TimeSpanType { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#GetTestOffset") }
	func setTestOffset(_ _0: Nn_TimeSpanType) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#SetTestOffset") }
	func getRtcValue() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#GetRtcValue") }
	func isRtcResetDetected() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#IsRtcResetDetected") }
	func getSetupResultValue() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#GetSetupResultValue") }
	func getInternalOffset() throws -> Nn_TimeSpanType { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#GetInternalOffset") }
	func setInternalOffset(_ _0: Nn_TimeSpanType) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ISteadyClock#SetInternalOffset") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getCurrentTimePoint()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 2:
			let ret = try getTestOffset()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 3:
			try setTestOffset(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try getRtcValue()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 101:
			let ret = try isRtcResetDetected()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 102:
			let ret = try getSetupResultValue()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 200:
			let ret = try getInternalOffset()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 201:
			try setInternalOffset(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::timesrv::detail::service::ISteadyClock: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnTimesrvDetailService_ITimeZoneService: IpcService {
	func getDeviceLocationName() throws -> NnTime_LocationName { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#GetDeviceLocationName") }
	func setDeviceLocationName(_ _0: NnTime_LocationName) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#SetDeviceLocationName") }
	func getTotalLocationNameCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#GetTotalLocationNameCount") }
	func loadLocationNameList(_ _0: UInt32, _ _1: Buffer<NnTime_LocationName>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#LoadLocationNameList") }
	func loadTimeZoneRule(_ _0: NnTime_LocationName, _ _1: Buffer<NnTime_TimeZoneRule>) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#LoadTimeZoneRule") }
	func getTimeZoneRuleVersion() throws -> NnTime_TimeZoneRuleVersion { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#GetTimeZoneRuleVersion") }
	func toCalendarTime(_ _0: NnTime_PosixTime, _ _1: Buffer<NnTime_TimeZoneRule>) throws -> (NnTime_CalendarTime, NnTimeSf_CalendarAdditionalInfo) { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#ToCalendarTime") }
	func toCalendarTimeWithMyRule(_ _0: NnTime_PosixTime) throws -> (NnTime_CalendarTime, NnTimeSf_CalendarAdditionalInfo) { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#ToCalendarTimeWithMyRule") }
	func toPosixTime(_ _0: NnTime_CalendarTime, _ _1: Buffer<NnTime_TimeZoneRule>, _ _2: Buffer<NnTime_PosixTime>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#ToPosixTime") }
	func toPosixTimeWithMyRule(_ _0: NnTime_CalendarTime, _ _1: Buffer<NnTime_PosixTime>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::ITimeZoneService#ToPosixTimeWithMyRule") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getDeviceLocationName()
			om.initialize(0, 0, 36)
			if ret.count != 0x24 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1:
			try setDeviceLocationName(im.getBytes(8, 0x24))
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getTotalLocationNameCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try loadLocationNameList(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<NnTime_LocationName>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			try loadTimeZoneRule(im.getBytes(8, 0x24), im.getBuffer(0x16, 0) as Buffer<NnTime_TimeZoneRule>)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getTimeZoneRuleVersion()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			let (_0, _1) = try toCalendarTime(im.getData(8) as UInt64, im.getBuffer(0x15, 0) as Buffer<NnTime_TimeZoneRule>)
			om.initialize(0, 0, 32)
			om.setData(8, _0.year)
			om.setData(10, _0.month)
			om.setData(11, _0.day)
			om.setData(12, _0.hour)
			om.setData(13, _0.minute)
			om.setData(14, _0.second)
			om.setData(16, _1.tm_wday)
			om.setData(20, _1.tm_yday)
			if _1.tz_name.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(24, _1.tz_name)
			om.setData(32, UInt32(_1.is_daylight_saving_time ? 1 : 0))
			om.setData(36, _1.utc_offset_seconds)
		
		case 101:
			let (_0, _1) = try toCalendarTimeWithMyRule(im.getData(8) as UInt64)
			om.initialize(0, 0, 32)
			om.setData(8, _0.year)
			om.setData(10, _0.month)
			om.setData(11, _0.day)
			om.setData(12, _0.hour)
			om.setData(13, _0.minute)
			om.setData(14, _0.second)
			om.setData(16, _1.tm_wday)
			om.setData(20, _1.tm_yday)
			if _1.tz_name.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(24, _1.tz_name)
			om.setData(32, UInt32(_1.is_daylight_saving_time ? 1 : 0))
			om.setData(36, _1.utc_offset_seconds)
		
		case 201:
			let ret = try toPosixTime(NnTime_CalendarTime(year: im.getData(8) as UInt16, month: im.getData(10) as UInt8, day: im.getData(11) as UInt8, hour: im.getData(12) as UInt8, minute: im.getData(13) as UInt8, second: im.getData(14) as UInt8), im.getBuffer(0x15, 0) as Buffer<NnTime_TimeZoneRule>, im.getBuffer(0xa, 0) as Buffer<NnTime_PosixTime>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 202:
			let ret = try toPosixTimeWithMyRule(NnTime_CalendarTime(year: im.getData(8) as UInt16, month: im.getData(10) as UInt8, day: im.getData(11) as UInt8, hour: im.getData(12) as UInt8, minute: im.getData(13) as UInt8, second: im.getData(14) as UInt8), im.getBuffer(0xa, 0) as Buffer<NnTime_PosixTime>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::timesrv::detail::service::ITimeZoneService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnTimesrvDetailService_IStaticService: IpcService {
	func getStandardUserSystemClock() throws -> NnTimesrvDetailService_ISystemClock { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetStandardUserSystemClock") }
	func getStandardNetworkSystemClock() throws -> NnTimesrvDetailService_ISystemClock { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetStandardNetworkSystemClock") }
	func getStandardSteadyClock() throws -> NnTimesrvDetailService_ISteadyClock { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetStandardSteadyClock") }
	func getTimeZoneService() throws -> NnTimesrvDetailService_ITimeZoneService { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetTimeZoneService") }
	func getStandardLocalSystemClock() throws -> NnTimesrvDetailService_ISystemClock { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetStandardLocalSystemClock") }
	func getEphemeralNetworkSystemClock() throws -> NnTimesrvDetailService_ISystemClock { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetEphemeralNetworkSystemClock") }
	func setStandardSteadyClockInternalOffset(_ _0: Nn_TimeSpanType) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#SetStandardSteadyClockInternalOffset") }
	func isStandardUserSystemClockAutomaticCorrectionEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#IsStandardUserSystemClockAutomaticCorrectionEnabled") }
	func setStandardUserSystemClockAutomaticCorrectionEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#SetStandardUserSystemClockAutomaticCorrectionEnabled") }
	func getStandardUserSystemClockInitialYear(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetStandardUserSystemClockInitialYear") }
	func isStandardNetworkSystemClockAccuracySufficient() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#IsStandardNetworkSystemClockAccuracySufficient") }
	func calculateMonotonicSystemClockBaseTimePoint(_ _0: NnTime_SystemClockContext) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#CalculateMonotonicSystemClockBaseTimePoint") }
	func getClockSnapshot(_ _0: UInt8, _ _1: Buffer<NnTimeSf_ClockSnapshot>) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetClockSnapshot") }
	func getClockSnapshotFromSystemClockContext(_ _0: UInt8, _ _1: NnTime_SystemClockContext, _ _2: NnTime_SystemClockContext, _ _3: Buffer<NnTimeSf_ClockSnapshot>) throws { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#GetClockSnapshotFromSystemClockContext") }
	func calculateStandardUserSystemClockDifferenceByUser(_ _0: Buffer<NnTimeSf_ClockSnapshot>, _ _1: Buffer<NnTimeSf_ClockSnapshot>) throws -> Nn_TimeSpanType { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#CalculateStandardUserSystemClockDifferenceByUser") }
	func calculateSpanBetween(_ _0: Buffer<NnTimeSf_ClockSnapshot>, _ _1: Buffer<NnTimeSf_ClockSnapshot>) throws -> Nn_TimeSpanType { throw IpcError.unimplemented(name: "nn::timesrv::detail::service::nn::timesrv::detail::service::IStaticService#CalculateSpanBetween") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getStandardUserSystemClock()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getStandardNetworkSystemClock()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try getStandardSteadyClock()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getTimeZoneService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try getStandardLocalSystemClock()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 5:
			let ret = try getEphemeralNetworkSystemClock()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 50:
			try setStandardSteadyClockInternalOffset(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try isStandardUserSystemClockAutomaticCorrectionEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 101:
			try setStandardUserSystemClockAutomaticCorrectionEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 102:
			let ret = try getStandardUserSystemClockInitialYear(nil)
			om.initialize(0, 0, 0)
		
		case 200:
			let ret = try isStandardNetworkSystemClockAccuracySufficient()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 300:
			let ret = try calculateMonotonicSystemClockBaseTimePoint(im.getBytes(8, 0x20))
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 400:
			try getClockSnapshot(im.getData(8) as UInt8, im.getBuffer(0x1a, 0) as Buffer<NnTimeSf_ClockSnapshot>)
			om.initialize(0, 0, 0)
		
		case 401:
			try getClockSnapshotFromSystemClockContext(im.getData(8) as UInt8, im.getBytes(9, 0x20), im.getBytes(41, 0x20), im.getBuffer(0x1a, 0) as Buffer<NnTimeSf_ClockSnapshot>)
			om.initialize(0, 0, 0)
		
		case 500:
			let ret = try calculateStandardUserSystemClockDifferenceByUser(im.getBuffer(0x19, 0) as Buffer<NnTimeSf_ClockSnapshot>, im.getBuffer(0x19, 1) as Buffer<NnTimeSf_ClockSnapshot>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 501:
			let ret = try calculateSpanBetween(im.getBuffer(0x19, 0) as Buffer<NnTimeSf_ClockSnapshot>, im.getBuffer(0x19, 1) as Buffer<NnTimeSf_ClockSnapshot>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::timesrv::detail::service::IStaticService: \(im.commandId)")
			try! bailout()
		}
	}
}
