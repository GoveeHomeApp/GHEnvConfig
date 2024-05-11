//
//  AppEnv.swift
//  B_BC_AppConfig
//
//  Created by abiaoyo on 2022/12/6.
//

import Foundation
import GHStorage

public enum AppEnv: Int {
    case dev = 0
    case pda = 1
    case pre = 2
    case release = 3
    
    //编译环境
    public static var build: AppEnv {
        var env: AppEnv = .release
        #if DEBUG
        env = .dev
        #elseif PDA
        env = .pda
        #elseif PRE
        env = .pre
        #else
        env = .release
        #endif
        return env
    }
    
    //运行环境
    public internal(set) static var mainRun: AppEnv {
        get {
            var env: AppEnv = build
            if env != .release {
                if let localEnv: String = Storage.mainUDs.getUDsValue(forKey: "STORAGE_SERVER_DOMAIN_ENV_NAME") as? String {
                    switch localEnv {
                    case "API_SERVER_ENV_DEV": env = .dev
                    case "API_SERVER_ENV_PDA": env = .pda
                    case "API_SERVER_ENV_PRE": env = .pre
                    case "API_SERVER_ENV_RELEASE": env = .release
                    default: break
                    }
                }
//                if let local:Int = Storage.mainUDs.getUDsValue(forKey: "env.main") as? Int, let localEnv = AppEnv.init(rawValue: local){
//                    env = localEnv
//                }
            }
            return env
        }
        set {
            if build != .release {
                switch newValue {
                case .dev:
                    Storage.mainUDs.setUDsValue("API_SERVER_ENV_DEV", forKey: "STORAGE_SERVER_DOMAIN_ENV_NAME")
                case .pda:
                    Storage.mainUDs.setUDsValue("API_SERVER_ENV_PDA", forKey: "STORAGE_SERVER_DOMAIN_ENV_NAME")
                case .pre:
                    Storage.mainUDs.setUDsValue("API_SERVER_ENV_PRE", forKey: "STORAGE_SERVER_DOMAIN_ENV_NAME")
                case .release:
                    Storage.mainUDs.setUDsValue("API_SERVER_ENV_RELEASE", forKey: "STORAGE_SERVER_DOMAIN_ENV_NAME")
                }
//                Storage.mainUDs.setUDsValue(newValue.rawValue, forKey: "env.main")
            }
        }
    }
    
    //运行环境
    public internal(set) static var siriRun: AppEnv {
        get {
            var env: AppEnv = build
            if env != .release {
                if let local:Int = Storage.siriUDs.getUDsValue(forKey: "env.siri") as? Int, let localEnv = AppEnv.init(rawValue: local){
                    env = localEnv
                }
            }
            return env
        }
        set {
            if build != .release {
                Storage.siriUDs.setUDsValue(newValue.rawValue, forKey: "env.siri")
            }
        }
    }
    
    //运行环境
    public internal(set) static var todayRun: AppEnv {
        get {
            var env: AppEnv = build
            if env != .release {
                if let local:Int = Storage.todayUDs.getUDsValue(forKey: "env.today") as? Int, let localEnv = AppEnv.init(rawValue: local){
                    env = localEnv
                }
            }
            return env
        }
        set {
            if build != .release {
                Storage.todayUDs.setUDsValue(newValue.rawValue, forKey: "env.today")
            }
        }
    }
    
    //运行环境
    public internal(set) static var widgetRun: AppEnv {
        get {
            var env: AppEnv = build
            if env != .release {
                if let local:Int = Storage.widgetUDs.getUDsValue(forKey: "env.widget") as? Int, let localEnv = AppEnv.init(rawValue: local){
                    env = localEnv
                }
            }
            return env
        }
        set {
            if build != .release {
                Storage.widgetUDs.setUDsValue(newValue.rawValue, forKey: "env.widget")
            }
        }
    }
}


public enum AppIoTEnv: Int {
    case release = 0
    case dev = 1
    case pre = 2
    
    public var value:String {
        switch self {
        case .dev:
            return "1"
        default:
            return "0"
        }
    }
    
    //编译环境
    public static var build: AppIoTEnv {
        var env: AppIoTEnv = .release
        #if DEBUG
        env = .dev
        #elseif PDA
        env = .dev
        #elseif PRE
        env = .pre
        #else
        env = .release
        #endif
        return env
    }
    
    //运行环境
    public internal(set) static var mainRun: AppIoTEnv {
        get {
            var env: AppIoTEnv = build
            if env != .release {
                if let localEnv: Int = Storage.mainUDs.getUDsValue(forKey: "STORAGE_IOT_VERSION") as? Int {
                    switch localEnv {
                    case AppIoTEnv.dev.rawValue:
                        env = .dev
                    default:
                        env = .release
                    }
                }
//                if let local:Int = Storage.mainUDs.getUDsValue(forKey: "iot.env.main") as? Int, let localEnv = AppIoTEnv.init(rawValue: local){
//                    env = localEnv
//                }
            }
            return env
        }
        set {
            if build != .release {
//                Storage.mainUDs.setUDsValue(newValue.rawValue, forKey: "iot.env.main")
                Storage.mainUDs.setUDsValue(newValue.rawValue, forKey: "STORAGE_IOT_VERSION")
            }
        }
    }
    
    //运行环境
    public internal(set) static var siriRun: AppIoTEnv {
        get {
            var env: AppIoTEnv = build
            if env != .release {
                if let local:Int = Storage.siriUDs.getUDsValue(forKey: "iot.env.siri") as? Int{
//                    env = localEnv
                    switch local {
                    case AppIoTEnv.dev.rawValue:
                        env = .dev
                    default:
                        env = .release
                    }
                }
            }
            return env
        }
        set {
            if build != .release {
                Storage.siriUDs.setUDsValue(newValue.rawValue, forKey: "iot.env.siri")
            }
        }
    }
    
    //运行环境
    public internal(set) static var todayRun: AppIoTEnv {
        get {
            var env: AppIoTEnv = build
            if env != .release {
                if let local:Int = Storage.todayUDs.getUDsValue(forKey: "iot.env.today") as? Int{
//                    env = localEnv
                    switch local {
                    case AppIoTEnv.dev.rawValue:
                        env = .dev
                    default:
                        env = .release
                    }
                }
            }
            return env
        }
        set {
            if build != .release {
                Storage.todayUDs.setUDsValue(newValue.rawValue, forKey: "iot.env.today")
            }
        }
    }
}
