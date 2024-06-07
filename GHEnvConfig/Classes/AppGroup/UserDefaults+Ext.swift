import Foundation


extension UserDefaults {
    
    internal func getUDsValue(forKey key: String) -> Any? {
        return value(forKey: key)
    }
    
    internal func setUDsValue(_ value:Any?, forKey key:String) {
        set(value, forKey: key)
        synchronize()
    }
}
