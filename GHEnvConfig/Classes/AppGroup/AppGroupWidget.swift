//
//  AppGroupWidget.swift
//  B_BC_AppGroup
//
//  Created by abiaoyo on 2022/11/28.
//

import Foundation
import GHStorage

public class AppGroupWidget: NSObject {
    
    public static var UDs: UserDefaults { Storage.widgetUDs }
    
    //---------------------------
    public static func getUDsValue(forKey key:String) -> Any? {
        return UDs.getUDsValue(forKey: key)
    }

    public static func setUDsValue(_ val:Any?, forKey key:String) {
        UDs.setUDsValue(val, forKey: key)
    }
    //---------------------------
    
    public static var deviceList:[[String:Any]]? {
        set { setUDsValue(newValue, forKey: WidgetDef.DEVICE_LIST_KEY) }
        get { return getUDsValue(forKey:WidgetDef.DEVICE_LIST_KEY) as? [[String:Any]]}
    }
    
    
    public static var lockScreenSensor:[String:Any]? {
        set { setUDsValue(newValue, forKey: WidgetDef.LOCKSCREEN_DEVICE_SENSOR_KEY) }
        get { return getUDsValue(forKey:WidgetDef.LOCKSCREEN_DEVICE_SENSOR_KEY) as? [String:Any]}
    }
    
    
    public static var is24Hours:Bool {
        set { setUDsValue(newValue, forKey: WidgetDef.IS_24_HOURS_KEY) }
        get { return getUDsValue(forKey: WidgetDef.IS_24_HOURS_KEY) as? Bool ?? false }
    }
    
    public static var isFDegree:Bool {
        set { setUDsValue(newValue, forKey: WidgetDef.IS_F_DEGREE_KEY) }
        get { return getUDsValue(forKey: WidgetDef.IS_F_DEGREE_KEY) as? Bool ?? false }
    }
    
    public static func setIsFDegree(_ val:Bool, forDevice deviceId:String) {
        let key = WidgetDef.DEVICE_IS_F_DEGREE_KEY + "_" + deviceId
        setUDsValue(val, forKey: key)
    }
    public static func getIsFDegree(forDevice deviceId:String) -> Bool {
        let key = WidgetDef.DEVICE_IS_F_DEGREE_KEY + "_" + deviceId
        return getUDsValue(forKey: key) as? Bool ?? false
    }
    
    //---------------------------
    public internal(set) static var accountId:Int {
        set { setUDsValue(newValue, forKey: WidgetDef.ACCOUNT_ID) }
        get { return getUDsValue(forKey: WidgetDef.ACCOUNT_ID) as? Int ?? 0 }
    }
    
    public internal(set) static var accountTopic:String? {
        set { setUDsValue(newValue, forKey: WidgetDef.ACCOUNT_TOPIC) }
        get { return getUDsValue(forKey:WidgetDef.ACCOUNT_TOPIC) as? String }
    }
    
    public internal(set) static var isLogin:Bool {
        set { setUDsValue(newValue, forKey: WidgetDef.IS_LOGIN) }
        get { return getUDsValue(forKey:WidgetDef.IS_LOGIN) as? Bool ?? false }
    }
    
    public internal(set) static var token:String? {
        set { setUDsValue(newValue, forKey: WidgetDef.TOKEN) }
        get { return getUDsValue(forKey:WidgetDef.TOKEN) as? String }
    }
    
}
