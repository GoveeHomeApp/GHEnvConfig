//
//  AppEnvConfig.swift
//  B_BC_Env
//
//  Created by abiaoyo on 2022/12/3.
//

import Foundation

public class AppEnvConfig: NSObject{
    
    //----------------------------------------
    public static var build: AppEnv {
        return AppEnv.build
    }
    
    public static var mainRun: AppEnv {
        get { return AppEnv.mainRun }
        set {
            AppEnv.mainRun = newValue
            AppEnv.siriRun = newValue
            AppEnv.todayRun = newValue
            AppEnv.widgetRun = newValue
        }
    }
    
    //----------------------------------------
    public static var siriRun: AppEnv {
        get { return AppEnv.siriRun }
    }
    
    public static var todayRun: AppEnv {
        get { return AppEnv.todayRun }
    }
    
    public static var widgetRun: AppEnv {
        get { return AppEnv.widgetRun }
    }
}
