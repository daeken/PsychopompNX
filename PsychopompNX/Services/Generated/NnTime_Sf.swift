struct NnTimeSf_CalendarAdditionalInfo {
    var tm_wday: UInt32
    var tm_yday: Int32
    var tz_name: [UInt8]
    var is_daylight_saving_time: Bool
    var utc_offset_seconds: Int32

    init(tm_wday: UInt32, tm_yday: Int32, tz_name: [UInt8], is_daylight_saving_time: Bool, utc_offset_seconds: Int32) {
        self.tm_wday = tm_wday
        self.tm_yday = tm_yday
        self.tz_name = tz_name
        self.is_daylight_saving_time = is_daylight_saving_time
        self.utc_offset_seconds = utc_offset_seconds
    }
}
typealias NnTimeSf_ClockSnapshot = [UInt8]
