//
//  AppGroupToday.swift
//  B_BC_AppGroup
//
//  Created by abiaoyo on 2022/11/28.
//

import Foundation
import GHStorage

public class AppGroupToday: NSObject {
    
    public static var UDs: UserDefaults { Storage.todayUDs }
    
    //---------------------------
    public static func getUDsValue(forKey key:String) -> Any? {
        return UDs.getUDsValue(forKey: key)
    }
    
    public static func setUDsValue(_ val:Any?, forKey key:String) {
        UDs.setUDsValue(val, forKey: key)
    }
    
    //---------------------------
    public static var selectedDevices:[[String:Any]]? {
        set { setUDsValue(newValue, forKey: TodayDef.SELECTED_DEVICE) }
        get { return getUDsValue(forKey:TodayDef.SELECTED_DEVICE) as? [[String:Any]] ?? [] }
    }
    
    //---------------------------
    
    public internal(set) static var accountId:Int {
        set { setUDsValue(newValue, forKey: TodayDef.ACCOUNT_ID) }
        get { return getUDsValue(forKey: TodayDef.ACCOUNT_ID) as? Int ?? 0 }
    }

    public internal(set) static var accountTopic:String? {
        set { setUDsValue(newValue, forKey: TodayDef.ACCOUNT_TOPIC) }
        get { return getUDsValue(forKey:TodayDef.ACCOUNT_TOPIC) as? String }
    }

    public internal(set) static var isLogin:Bool {
        set { setUDsValue(newValue, forKey: TodayDef.IS_LOGIN) }
        get { return getUDsValue(forKey:TodayDef.IS_LOGIN) as? Bool ?? false }
    }

    public internal(set) static var token:String? {
        set { setUDsValue(newValue, forKey: TodayDef.TOKEN) }
        get { return getUDsValue(forKey:TodayDef.TOKEN) as? String }
    }
    
    public internal(set) static var deviceUUID:String {
        set { setUDsValue(newValue, forKey: TodayDef.DEVICE_UUID) }
        get { return getUDsValue(forKey:TodayDef.DEVICE_UUID) as? String ?? "" }
    }
    
}

extension AppGroupToday {
    public static var iotVersion: String {
        return AppIoTEnv.todayRun.value
    }
    public static var serverID: String {
        return ServerIDDef.envValue(AppEnv.todayRun)
    }
    
    public static var serverURL: String {
        return ServerURLDef.envValue(AppEnv.todayRun)
    }

}

