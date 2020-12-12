struct NnAudio_AudioInBuffer {
    var next: UInt64
    var samples: UInt64
    var capacity: UInt64
    var size: UInt64
    var offset: UInt64

    init(next: UInt64, samples: UInt64, capacity: UInt64, size: UInt64, offset: UInt64) {
        self.next = next
        self.samples = samples
        self.capacity = capacity
        self.size = size
        self.offset = offset
    }
}
struct NnAudio_AudioOutBuffer {
    var next: UInt64
    var samples: UInt64
    var capacity: UInt64
    var size: UInt64
    var offset: UInt64

    init(next: UInt64, samples: UInt64, capacity: UInt64, size: UInt64, offset: UInt64) {
        self.next = next
        self.samples = samples
        self.capacity = capacity
        self.size = size
        self.offset = offset
    }
}
