//
//  AppGroupSiri.swift
//  B_BC_AppGroup
//
//  Created by abiaoyo on 2022/11/28.
//

import Foundation
import GHStorage

public class AppGroupSiri: NSObject {
    
    public static var UDs: UserDefaults { Storage.siriUDs }
    
    //---------------------------
    
    public static func getUDsValue(forKey key:String) -> Any? {
        return UDs.getUDsValue(forKey: key)
    }
    
    public static func setUDsValue(_ val:Any?, forKey key:String) {
        UDs.setUDsValue(val, forKey: key)
    }
    
    //---------------------------
    
    public static var siriEngineIdList:[String] {
        
        set { setUDsValue(newValue, forKey: SiriDef.SIRIENGINEIDLIST) }
        get { return getUDsValue(forKey:SiriDef.SIRIENGINEIDLIST) as? [String] ?? [] }
    }
    
    public static var siriEngineId:String {
        set { setUDsValue(newValue, forKey: SiriDef.SIRIENGINEID) }
        get { return getUDsValue(forKey:SiriDef.SIRIENGINEID) as? String ?? "" }
    }
    
    public static var siriInfoData:Data {
        set { setUDsValue(newValue, forKey: SiriDef.SIRIINFO_LIST) }
        get { return getUDsValue(forKey:SiriDef.SIRIINFO_LIST) as? Data ?? Data.init() }
    }
    
    public static var useCount:String? {
        set { setUDsValue(newValue, forKey: SiriDef.USE_COUNT) }
        get { return getUDsValue(forKey:SiriDef.USE_COUNT) as? String }
    }
    //---------------------------
//    //*************
    public internal(set) static var accountId:Int {
        set { setUDsValue(newValue, forKey: SiriDef.ACCOUNT_ID) }
        get { return getUDsValue(forKey:SiriDef.ACCOUNT_ID) as? Int ?? 0 }
    }

    public internal(set) static var accountTopic:String? {
        set { setUDsValue(newValue, forKey: SiriDef.ACCOUNT_TOPIC) }
        get { return getUDsValue(forKey:SiriDef.ACCOUNT_TOPIC) as? String }
    }

    public internal(set) static var isLogin:Bool {
        set { setUDsValue(newValue, forKey: SiriDef.IS_LOGIN) }
        get { return getUDsValue(forKey:SiriDef.IS_LOGIN) as? Bool ?? false }
    }

    public internal(set) static var token:String? {
        set { setUDsValue(newValue, forKey: SiriDef.TOKEN) }
        get { return getUDsValue(forKey:SiriDef.TOKEN) as? String }
    }
    
    public static var deviceUUID:String {
        set { setUDsValue(newValue, forKey: SiriDef.DEVICE_UUID) }
        get { return getUDsValue(forKey:SiriDef.DEVICE_UUID) as? String ?? "" }
    }
    
}

extension AppGroupSiri {
    public static var iotVersion: String {
        return AppIoTEnv.siriRun.value
    }
    public static var serverID: String {
        return ServerIDDef.envValue(AppEnv.siriRun)
    }
    
    public static var serverURL: String {
        return ServerURLDef.envValue(AppEnv.siriRun)
    }

}
