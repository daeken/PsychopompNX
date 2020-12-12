typealias NnTime_TimeZoneRule = [UInt8]
typealias NnTime_TimeZoneRuleVersion = [UInt8]
typealias NnTime_PosixTime = UInt64
struct NnTime_CalendarTime {
    var year: UInt16
    var month: UInt8
    var day: UInt8
    var hour: UInt8
    var minute: UInt8
    var second: UInt8

    init(year: UInt16, month: UInt8, day: UInt8, hour: UInt8, minute: UInt8, second: UInt8) {
        self.year = year
        self.month = month
        self.day = day
        self.hour = hour
        self.minute = minute
        self.second = second
    }
}
typealias NnTime_SystemClockContext = [UInt8]
typealias NnTime_LocationName = [UInt8]
typealias NnTime_SteadyClockTimePoint = [UInt8]
