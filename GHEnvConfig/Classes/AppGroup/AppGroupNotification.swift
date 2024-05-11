//
//  AppGroupNotification.swift
//  B_BC_AppConfig
//
//  Created by abiaoyo on 2022/12/13.
//

import Foundation
import GHStorage

public class AppGroupNotification: NSObject {
    
    public static var UDs: UserDefaults { Storage.notificationUDs }
    
    //---------------------------
    public static func getUDsValue(forKey key:String) -> Any? {
        return UDs.getUDsValue(forKey: key)
    }
    
    public static func setUDsValue(_ val:Any?, forKey key:String) {
        UDs.setUDsValue(val, forKey: key)
    }
}
