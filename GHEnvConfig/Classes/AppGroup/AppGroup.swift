//
//  AppGroup.swift
//  B_BC_AppGroup
//
//  Created by abiaoyo on 2022/11/28.
//

import Foundation
import GHStorage

public class AppGroup: NSObject {
    
    //MARK: - =================================
    public static func clearLoginInfo() {
        isLogin = false
        accountId = 0
        token = nil
        accountTopic = ""
    }
    
    //MARK: - =================================
    public static var accountId:Int {
        set {
            Storage.mainUDs.setUDsValue(newValue, forKey: MainDef.ACCOUNT_ID);
            AppGroupSiri.accountId = newValue
            AppGroupToday.accountId = newValue
            AppGroupWidget.accountId = newValue
        }
        get { return Storage.mainUDs.getUDsValue(forKey: MainDef.ACCOUNT_ID) as? Int ?? 0 }
    }

    public static var accountTopic:String? {
        set {
            Storage.mainUDs.setUDsValue(newValue, forKey: MainDef.ACCOUNT_TOPIC)
            AppGroupSiri.accountTopic = newValue
            AppGroupToday.accountTopic = newValue
            AppGroupWidget.accountTopic = newValue
        }
        get { return Storage.mainUDs.getUDsValue(forKey: MainDef.ACCOUNT_TOPIC) as? String }
    }
    
    public static var isLogin:Bool {
        set {
            Storage.mainUDs.setUDsValue(newValue, forKey: MainDef.IS_LOGIN)
            AppGroupSiri.isLogin = newValue
            AppGroupToday.isLogin = newValue
            AppGroupWidget.isLogin = newValue
        }
        get { return Storage.mainUDs.getUDsValue(forKey: MainDef.IS_LOGIN) as? Bool ?? false }
    }
    

    public static var token:String? {
        set {
            Storage.mainUDs.setUDsValue(newValue, forKey: MainDef.TOKEN)
            AppGroupSiri.token = newValue
            AppGroupToday.token = newValue
            AppGroupWidget.token = newValue
        }
        get { return Storage.mainUDs.getUDsValue(forKey: MainDef.TOKEN) as? String }
    }

    
    public static var deviceUUID:String? {
        set {
            Storage.mainUDs.setUDsValue(newValue, forKey: MainDef.DEVICE_UUID)
            AppGroupSiri.deviceUUID = newValue ?? ""
            AppGroupToday.deviceUUID = newValue ?? ""
        }
        get { return Storage.mainUDs.getUDsValue(forKey: MainDef.DEVICE_UUID) as? String }
    }

}
