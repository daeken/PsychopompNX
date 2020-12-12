struct NnUsb_Usb_Descriptor_Data {
    var idVendor: UInt16
    var idProduct: UInt16
    var bcdDevice: UInt16
    var manufacturer: [UInt8]
    var product: [UInt8]
    var serialNumber: [UInt8]

    init(idVendor: UInt16, idProduct: UInt16, bcdDevice: UInt16, manufacturer: [UInt8], product: [UInt8], serialNumber: [UInt8]) {
        self.idVendor = idVendor
        self.idProduct = idProduct
        self.bcdDevice = bcdDevice
        self.manufacturer = manufacturer
        self.product = product
        self.serialNumber = serialNumber
    }
}
enum NnUsb_Usb_Device_Speed: UInt32 {
    case unknown = 0
    case low = 1
    case full = 2
    case high = 3
    case superSpeed = 4
}
struct NnUsb_Usb_Endpoint_Descriptor {
    var bLength: UInt8
    var bDescriptorType: UInt8
    var bEndpointAddress: UInt8
    var bmAttributes: UInt8
    var wMaxPacketSize: UInt16
    var bInterval: UInt8

    init(bLength: UInt8, bDescriptorType: UInt8, bEndpointAddress: UInt8, bmAttributes: UInt8, wMaxPacketSize: UInt16, bInterval: UInt8) {
        self.bLength = bLength
        self.bDescriptorType = bDescriptorType
        self.bEndpointAddress = bEndpointAddress
        self.bmAttributes = bmAttributes
        self.wMaxPacketSize = wMaxPacketSize
        self.bInterval = bInterval
    }
}
struct NnUsb_Usb_Report_Entry {
    var urbId: UInt32
    var requestedSize: UInt32
    var transferredSize: UInt32
    var urbStatus: UInt32

    init(urbId: UInt32, requestedSize: UInt32, transferredSize: UInt32, urbStatus: UInt32) {
        self.urbId = urbId
        self.requestedSize = requestedSize
        self.transferredSize = transferredSize
        self.urbStatus = urbStatus
    }
}
struct NnUsb_Usb_Bos_Dev_Capability_Descriptor {
    var bLength: UInt8
    var bDescriptorType: UInt8
    var bDevCapabilityType: UInt8
    var dev_capability_data: Buffer<UInt8>

    init(bLength: UInt8, bDescriptorType: UInt8, bDevCapabilityType: UInt8, dev_capability_data: Buffer<UInt8>) {
        self.bLength = bLength
        self.bDescriptorType = bDescriptorType
        self.bDevCapabilityType = bDevCapabilityType
        self.dev_capability_data = dev_capability_data
    }
}
struct NnUsb_Usb_Interface_Descriptor {
    var bLength: UInt8
    var bDescriptorType: UInt8
    var bInterfaceNumber: UInt8
    var bAlternateSetting: UInt8
    var bNumEndpoints: UInt8
    var bInterfaceClass: UInt8
    var bInterfaceSubClass: UInt8
    var bInterfaceProtocol: UInt8
    var iInterface: UInt8

    init(bLength: UInt8, bDescriptorType: UInt8, bInterfaceNumber: UInt8, bAlternateSetting: UInt8, bNumEndpoints: UInt8, bInterfaceClass: UInt8, bInterfaceSubClass: UInt8, bInterfaceProtocol: UInt8, iInterface: UInt8) {
        self.bLength = bLength
        self.bDescriptorType = bDescriptorType
        self.bInterfaceNumber = bInterfaceNumber
        self.bAlternateSetting = bAlternateSetting
        self.bNumEndpoints = bNumEndpoints
        self.bInterfaceClass = bInterfaceClass
        self.bInterfaceSubClass = bInterfaceSubClass
        self.bInterfaceProtocol = bInterfaceProtocol
        self.iInterface = iInterface
    }
}
struct NnUsb_Usb_Device_Descriptor {
    var bLength: UInt8
    var bDescriptorType: UInt8
    var bcdUSB: UInt16
    var bDeviceClass: UInt8
    var bDeviceSubClass: UInt8
    var bDeviceProtocol: UInt8
    var bMaxPacketSize0: UInt8
    var idVendor: UInt16
    var idProduct: UInt16
    var bcdDevice: UInt16
    var iManufacturer: UInt8
    var iProduct: UInt8
    var iSerialNumber: UInt8
    var bNumConfigurations: UInt8

    init(bLength: UInt8, bDescriptorType: UInt8, bcdUSB: UInt16, bDeviceClass: UInt8, bDeviceSubClass: UInt8, bDeviceProtocol: UInt8, bMaxPacketSize0: UInt8, idVendor: UInt16, idProduct: UInt16, bcdDevice: UInt16, iManufacturer: UInt8, iProduct: UInt8, iSerialNumber: UInt8, bNumConfigurations: UInt8) {
        self.bLength = bLength
        self.bDescriptorType = bDescriptorType
        self.bcdUSB = bcdUSB
        self.bDeviceClass = bDeviceClass
        self.bDeviceSubClass = bDeviceSubClass
        self.bDeviceProtocol = bDeviceProtocol
        self.bMaxPacketSize0 = bMaxPacketSize0
        self.idVendor = idVendor
        self.idProduct = idProduct
        self.bcdDevice = bcdDevice
        self.iManufacturer = iManufacturer
        self.iProduct = iProduct
        self.iSerialNumber = iSerialNumber
        self.bNumConfigurations = bNumConfigurations
    }
}
struct NnUsb_Usb_Bos_Descriptor {
    var bLength: UInt8
    var bDescriptorType: UInt8
    var wTotalLength: UInt16
    var bNumDeviceCaps: UInt8
    var dev_capability: Buffer<NnUsb_Usb_Bos_Dev_Capability_Descriptor>

    init(bLength: UInt8, bDescriptorType: UInt8, wTotalLength: UInt16, bNumDeviceCaps: UInt8, dev_capability: Buffer<NnUsb_Usb_Bos_Dev_Capability_Descriptor>) {
        self.bLength = bLength
        self.bDescriptorType = bDescriptorType
        self.wTotalLength = wTotalLength
        self.bNumDeviceCaps = bNumDeviceCaps
        self.dev_capability = dev_capability
    }
}
