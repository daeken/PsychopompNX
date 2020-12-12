class NnEs_IETicketService: IpcService {
	func importTicket(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func importTicketCertificateSet(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteTicket(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deletePersonalizedTicket(_ _0: Any?) throws { throw IpcError.unimplemented }
	func deleteAllCommonTicket() throws { throw IpcError.unimplemented }
	func deleteAllPersonalizedTicket() throws { throw IpcError.unimplemented }
	func deleteAllPersonalizedTicketEx(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func countCommonTicket() throws -> Any? { throw IpcError.unimplemented }
	func countPersonalizedTicket() throws -> Any? { throw IpcError.unimplemented }
	func listCommonTicket(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listPersonalizedTicket(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listMissingPersonalizedTicket(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getCommonTicketSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getPersonalizedTicketSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getCommonTicketData(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getPersonalizedTicketData(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func ownTicket(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getTicketInfo(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listLightTicketInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func signData(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getCommonTicketAndCertificateSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getCommonTicketAndCertificateData(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func importPrepurchaseRecord(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deletePrepurchaseRecord(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteAllPrepurchaseRecord() throws { throw IpcError.unimplemented }
	func countPrepurchaseRecord() throws -> Any? { throw IpcError.unimplemented }
	func listPrepurchaseRecord(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listPrepurchaseRecordInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown30(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown31(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown32(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown33(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown34(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown35(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown36(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown501(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown502(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getTitleKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown504(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown508(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown509(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown510(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1001(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1002(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1003(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1004(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1005(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1006(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1007(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1009(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1010(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1011(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1012(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1013(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1014(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1015(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1016(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1501(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1502(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1503(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1504(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1505(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2000(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2501(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2502(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try importTicket(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try importTicketCertificateSet(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try deleteTicket(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try deletePersonalizedTicket(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try deleteAllCommonTicket()
			om.initialize(0, 0, 0)
		
		case 6:
			try deleteAllPersonalizedTicket()
			om.initialize(0, 0, 0)
		
		case 7:
			try deleteAllPersonalizedTicketEx(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try countCommonTicket()
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try countPersonalizedTicket()
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try listCommonTicket(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try listPersonalizedTicket(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try listMissingPersonalizedTicket(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try getCommonTicketSize(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try getPersonalizedTicketSize(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try getCommonTicketData(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try getPersonalizedTicketData(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 18:
			try ownTicket(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try getTicketInfo(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try listLightTicketInfo(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			try signData(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x16, 0) as Buffer<UInt8>, im.getBuffer(0x16, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try getCommonTicketAndCertificateSize(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getCommonTicketAndCertificateData(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>, im.getBuffer(0x6, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 24:
			try importPrepurchaseRecord(im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 25:
			try deletePrepurchaseRecord(im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 26:
			try deleteAllPrepurchaseRecord()
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try countPrepurchaseRecord()
			om.initialize(0, 0, 0)
		
		case 28:
			let ret = try listPrepurchaseRecord(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 29:
			let ret = try listPrepurchaseRecordInfo(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 30:
			let ret = try unknown30(nil)
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try unknown31(nil)
			om.initialize(0, 0, 0)
		
		case 32:
			let ret = try unknown32(nil)
			om.initialize(0, 0, 0)
		
		case 33:
			let ret = try unknown33(nil)
			om.initialize(0, 0, 0)
		
		case 34:
			let ret = try unknown34(nil)
			om.initialize(0, 0, 0)
		
		case 35:
			let ret = try unknown35(nil)
			om.initialize(0, 0, 0)
		
		case 36:
			let ret = try unknown36(nil)
			om.initialize(0, 0, 0)
		
		case 501:
			let ret = try unknown501(nil)
			om.initialize(0, 0, 0)
		
		case 502:
			let ret = try unknown502(nil)
			om.initialize(0, 0, 0)
		
		case 503:
			let ret = try getTitleKey(nil)
			om.initialize(0, 0, 0)
		
		case 504:
			let ret = try unknown504(nil)
			om.initialize(0, 0, 0)
		
		case 508:
			let ret = try unknown508(nil)
			om.initialize(0, 0, 0)
		
		case 509:
			let ret = try unknown509(nil)
			om.initialize(0, 0, 0)
		
		case 510:
			let ret = try unknown510(nil)
			om.initialize(0, 0, 0)
		
		case 1001:
			let ret = try unknown1001(nil)
			om.initialize(0, 0, 0)
		
		case 1002:
			let ret = try unknown1002(nil)
			om.initialize(0, 0, 0)
		
		case 1003:
			let ret = try unknown1003(nil)
			om.initialize(0, 0, 0)
		
		case 1004:
			let ret = try unknown1004(nil)
			om.initialize(0, 0, 0)
		
		case 1005:
			let ret = try unknown1005(nil)
			om.initialize(0, 0, 0)
		
		case 1006:
			let ret = try unknown1006(nil)
			om.initialize(0, 0, 0)
		
		case 1007:
			let ret = try unknown1007(nil)
			om.initialize(0, 0, 0)
		
		case 1009:
			let ret = try unknown1009(nil)
			om.initialize(0, 0, 0)
		
		case 1010:
			let ret = try unknown1010(nil)
			om.initialize(0, 0, 0)
		
		case 1011:
			let ret = try unknown1011(nil)
			om.initialize(0, 0, 0)
		
		case 1012:
			let ret = try unknown1012(nil)
			om.initialize(0, 0, 0)
		
		case 1013:
			let ret = try unknown1013(nil)
			om.initialize(0, 0, 0)
		
		case 1014:
			let ret = try unknown1014(nil)
			om.initialize(0, 0, 0)
		
		case 1015:
			let ret = try unknown1015(nil)
			om.initialize(0, 0, 0)
		
		case 1016:
			let ret = try unknown1016(nil)
			om.initialize(0, 0, 0)
		
		case 1501:
			let ret = try unknown1501(nil)
			om.initialize(0, 0, 0)
		
		case 1502:
			let ret = try unknown1502(nil)
			om.initialize(0, 0, 0)
		
		case 1503:
			let ret = try unknown1503(nil)
			om.initialize(0, 0, 0)
		
		case 1504:
			let ret = try unknown1504(nil)
			om.initialize(0, 0, 0)
		
		case 1505:
			let ret = try unknown1505(nil)
			om.initialize(0, 0, 0)
		
		case 2000:
			let ret = try unknown2000(nil)
			om.initialize(0, 0, 0)
		
		case 2501:
			let ret = try unknown2501(nil)
			om.initialize(0, 0, 0)
		
		case 2502:
			let ret = try unknown2502(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::es::IETicketService: \(im.commandId)")
			try! bailout()
		}
	}
}
