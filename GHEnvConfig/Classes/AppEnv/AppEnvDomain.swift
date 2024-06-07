//
//  AppEnvDomain.swift
//  B_BC_Env
//
//  Created by abiaoyo on 2022/12/5.
//

import Foundation

protocol EnvValueDef {
    associatedtype ValueType
    static func envValue(_ env: AppEnv) -> ValueType
    
    static var DEV_Env:ValueType { get }    //dev开发环境
    static var PDA_Env:ValueType { get }    //pda测试环境
    static var PRE_Env:ValueType { get }     //pre预发布环境
    static var RELEASE_Env:ValueType { get }     //正式环境
}

extension EnvValueDef {
    static func envValue(_ env: AppEnv) -> ValueType {
        switch env {
        case .dev: return DEV_Env
        case .pda: return PDA_Env
        case .pre: return PRE_Env
        case .release: return RELEASE_Env
        }
    }
}

public class ServerIDDef: NSObject, EnvValueDef{
    typealias ValueType = String
    public static var DEV_Env = "1"    //dev开发环境
    public static var PDA_Env = "2"    //pda测试环境
    public static var PRE_Env = "5"     //pre预发布环境
    public static var RELEASE_Env = "0"     //正式环境
}

public class ServerURLDef: NSObject, EnvValueDef{
    typealias ValueType = String
    public static var DEV_Env = "https://dev-app2.govee.com"    //dev开发环境
    public static var PDA_Env = "https://pda-app2.govee.com"    //pda测试环境
    public static var PRE_Env = "https://pre-app2.govee.com"     //pre预发布环境
    public static var RELEASE_Env = "https://app2.govee.com"     //正式环境
}

struct H5V1URLDef: EnvValueDef {
    typealias ValueType = String
    public static var DEV_Env = "https://dev-bi.govee.com"
    public static var PDA_Env = "https://pda-bi.govee.com"
    public static var PRE_Env = "https://bi.govee.com"
    public static var RELEASE_Env = "https://bi.govee.com"
}

struct H5V2URLDef: EnvValueDef {
    typealias ValueType = String
    public static var DEV_Env = "https://dev-webview.govee.com"
    public static var PDA_Env = "https://pda-webview.govee.com"
    public static var PRE_Env = "https://webview.govee.com"
    public static var RELEASE_Env = "https://webview.govee.com"
}

protocol EnvDomainDef {
    static var serverID: String { get }
    static var serverURL: String { get }
}

/// 主程序
public class AppEnvDomain: NSObject, EnvDomainDef {
    
    public static var serverID: String {
        return ServerIDDef.envValue(AppEnv.mainRun)
    }
    
    public static var serverURL: String {
        return ServerURLDef.envValue(AppEnv.mainRun)
    }
    
    /// H5
    public static var h5V1: String {
        return H5V1URLDef.envValue(AppEnv.mainRun)
    }
    
    /// New H5
    public static var h5V2: String {
        return H5V2URLDef.envValue(AppEnv.mainRun)
    }
    
    /// 分享
    public static var h5Share: String {
        switch AppEnv.mainRun {
        case .dev: return "https://dev-app-hd.govee.com"
        case .pda: return "https://pda-app-hd.govee.com"
        case .pre: return "https://pre-app-hd.govee.com"
        case .release: return "https://app-hd.govee.com"
        }
    }
    
    /// Robot
    public static var robot: String {
        switch AppEnv.mainRun {
        case .dev: return "https://dev-app-chat.igovee.com"
        case .pda: return "https://dev-app-chat.igovee.com"
        case .pre: return "https://app-chat.igovee.com"
        case .release: return "https://app-chat.igovee.com"
        }
    }
    
    /// http iot域名
    public static var iotHttp: String {
        switch AppEnv.mainRun {
        case .dev: return "http://dev-app.govee.com"
        case .pda: return "http://dev-app.govee.com"
        case .pre: return "http://app.govee.com"
        case .release: return "http://app.govee.com"
        }
    }
    
    /// https iot域名
    public static var iotHttps: String {
        switch AppEnv.mainRun {
        case .dev: return "https://dev-device.govee.com"
        case .pda: return "https://dev-device.govee.com"
        case .pre: return "https://device.govee.com"
        case .release: return "https://device.govee.com"
        }
    }
    
    /// 商城h5
    public static var h5Mall: String {
        switch AppEnv.mainRun {
        case .dev: return "https://dev-app-mall.govee.com"
        case .pda: return "https://pda-app-mall.govee.com"
        case .pre: return "https://pre-app-mall.govee.com"
        case .release: return "https://app-mall.govee.com"
        }
    }
    
    /// 商城
    public static var mall: String {
        switch AppEnv.mainRun {
        case .dev: return "https://dev-mall.api.govee.com"
        case .pda: return "https://pda-mall.api.govee.com"
        case .pre: return "https://mall.api.govee.com"
        case .release: return "https://mall.api.govee.com"
        }
    }
    
    /// Govee Studio 的api，仅用于测试
    public static var studio: String {
        switch AppEnv.mainRun {
        case .dev: return "https://dev-appdiy-api.govee.com"
        case .pda: return "https://pda-appdiy-api.govee.com"
        case .pre: return "https://pre-appdiy-api.govee.com"
        case .release: return "https://appdiy-api.govee.com"
        }
    }
    
    public static var promotion: String {
        switch AppEnv.mainRun {
        case .dev: return "https://dev-promotion.govee.com"
        case .pda: return "https://pda-promotion.govee.com"
        case .pre: return "https://promotion.govee.com"
        case .release: return "https://promotion.govee.com"
        }
    }
}
