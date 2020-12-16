//
//  NnVisrv_Sf_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation

class NnVisrvSf_IManagerRootService_Impl: NnVisrvSf_IManagerRootService {
    override func getDisplayService(_ _0: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { NnVisrvSf_IApplicationDisplayService_Impl() }
    override func getDisplayServiceWithProxyNameExchange(_ _0: NnVi_ProxyName, _ _1: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerRootService#GetDisplayServiceWithProxyNameExchange") }
}

class NnVisrvSf_IApplicationDisplayService_Impl: NnVisrvSf_IApplicationDisplayService {
    override func getRelayService() throws -> NnsHosbinder_IHOSBinderDriver { NnsHosbinder_IHOSBinderDriver_Impl() }
    override func getSystemDisplayService() throws -> NnVisrvSf_ISystemDisplayService { NnVisrvSf_ISystemDisplayService() }
    override func getManagerDisplayService() throws -> NnVisrvSf_IManagerDisplayService { NnVisrvSf_IManagerDisplayService() }
    override func getIndirectDisplayTransactionService() throws -> NnsHosbinder_IHOSBinderDriver { NnsHosbinder_IHOSBinderDriver_Impl() }
    
    override func listDisplays(_ _0: Buffer<NnVi_DisplayInfo>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#ListDisplays") }
    
    override func openDisplay(_ _0: NnVi_DisplayName) throws -> UInt64 { 0 }
    
    override func openDefaultDisplay() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#OpenDefaultDisplay") }
    override func closeDisplay(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CloseDisplay") }
    override func setDisplayEnabled(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#SetDisplayEnabled") }
    override func getDisplayResolution(_ _0: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayResolution") }
    
    override func openLayer(_ _0: NnVi_DisplayName, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid, _ parcelBuf: Buffer<UInt8>) throws -> UInt64 {
        makeParcel(parcelBuf, [UInt8](repeating: 0, count: 4)) {
            $0.write(UInt32(2))
            $0.write(UInt32(0))
            $0.write(UInt32(0x20))
            $0.write(UInt32(0))
            $0.write(UInt32(0))
            $0.write(UInt32(0))
            $0.writeAll("dispdrv".utf8.map { UInt8($0) })
            $0.write(UInt8(0))
            $0.write(UInt64(0))
        }
    }
    
    override func closeLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CloseLayer") }
    override func createStrayLayer(_ _0: UInt32, _ _1: UInt64, _ _2: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CreateStrayLayer") }
    override func destroyStrayLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#DestroyStrayLayer") }
    
    override func setLayerScalingMode(_ _0: UInt32, _ _1: UInt64) throws { }
    
    override func convertScalingMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#ConvertScalingMode") }
    override func getIndirectLayerImageMap(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid, _ _5: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageMap") }
    override func getIndirectLayerImageCropMap(_ _0: Float32, _ _1: Float32, _ _2: Float32, _ _3: Float32, _ _4: UInt64, _ _5: UInt64, _ _6: UInt64, _ _7: NnApplet_AppletResourceUserId, _ _8: Pid, _ _9: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageCropMap") }
    override func getIndirectLayerImageRequiredMemoryInfo(_ _0: UInt64, _ _1: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageRequiredMemoryInfo") }
    
    override func getDisplayVsyncEvent(_ _0: UInt64) throws -> KObject { KEvent() }
    
    override func getDisplayVsyncEventForDebug(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayVsyncEventForDebug") }
}
