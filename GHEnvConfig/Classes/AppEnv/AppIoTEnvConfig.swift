//
//  AppEnvIoT.swift
//  B_BC_AppConfig
//
//  Created by abiaoyo on 2022/12/6.
//

import Foundation

public class AppIoTEnvConfig: NSObject {

    //----------------------------------------
    public static func iotVersion(_ env: AppIoTEnv) -> String {
        return env.value
    }
    
    public static var mainRun: AppIoTEnv {
        get { return AppIoTEnv.mainRun }
        set {
            AppIoTEnv.mainRun = newValue
            AppIoTEnv.siriRun = newValue
            AppIoTEnv.todayRun = newValue
        }
    }
    
    //----------------------------------------
    public static var siriRun: AppIoTEnv {
        get { return AppIoTEnv.siriRun }
    }
    
    public static var todayRun: AppIoTEnv {
        get { return AppIoTEnv.todayRun }
    }
    
}
