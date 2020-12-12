struct NnSocket_Sockaddr {
    var sa_len: UInt8
    var sa_family: UInt8
    var addr: [UInt8]

    init(sa_len: UInt8, sa_family: UInt8, addr: [UInt8]) {
        self.sa_len = sa_len
        self.sa_family = sa_family
        self.addr = addr
    }
}
struct NnSocket_BsdBufferConfig {
    var version: UInt32
    var tcp_tx_buf_size: UInt32
    var tcp_rx_buf_size: UInt32
    var tcp_tx_buf_max_size: UInt32
    var tcp_rx_buf_max_size: UInt32
    var udp_tx_buf_size: UInt32
    var udp_rx_buf_size: UInt32
    var sb_efficiency: UInt32

    init(version: UInt32, tcp_tx_buf_size: UInt32, tcp_rx_buf_size: UInt32, tcp_tx_buf_max_size: UInt32, tcp_rx_buf_max_size: UInt32, udp_tx_buf_size: UInt32, udp_rx_buf_size: UInt32, sb_efficiency: UInt32) {
        self.version = version
        self.tcp_tx_buf_size = tcp_tx_buf_size
        self.tcp_rx_buf_size = tcp_rx_buf_size
        self.tcp_tx_buf_max_size = tcp_tx_buf_max_size
        self.tcp_rx_buf_max_size = tcp_rx_buf_max_size
        self.udp_tx_buf_size = udp_tx_buf_size
        self.udp_rx_buf_size = udp_rx_buf_size
        self.sb_efficiency = sb_efficiency
    }
}
typealias NnSocket_Fd_Set = [UInt8]
struct NnSocket_Sockaddr_In {
    var sin_len: UInt8
    var sin_family: UInt8
    var sin_port: UInt16
    var sin_addr: UInt32
    var sin_zero: [UInt8]

    init(sin_len: UInt8, sin_family: UInt8, sin_port: UInt16, sin_addr: UInt32, sin_zero: [UInt8]) {
        self.sin_len = sin_len
        self.sin_family = sin_family
        self.sin_port = sin_port
        self.sin_addr = sin_addr
        self.sin_zero = sin_zero
    }
}
struct NnSocket_Timeout {
    var sec: UInt64
    var usec: UInt64
    var off: UInt64

    init(sec: UInt64, usec: UInt64, off: UInt64) {
        self.sec = sec
        self.usec = usec
        self.off = off
    }
}
typealias NnSocket_ResourceStatistics = Any?
