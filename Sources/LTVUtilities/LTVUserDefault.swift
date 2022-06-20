//
//  LTVUserDefault.swift
//  
//
//  Created by MAC MINI on 17/06/2022.
//

import Foundation

@propertyWrapper
public struct LTVUserDefault<T> {
    
    public let key: String
    public let defaultValue: T
    
    public var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
    
    public init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
}

// MARK: example
/*
enum GlobalSettings {
    
    @LTVUserDefault(key: "Last Version Prompted For Review", defaultValue: "")
    static var lastVersionPrompted: String
    
    @LTVUserDefault(key: "Last size for drawing", defaultValue: 0.5)
    static var lastPencilSize: Float
    
}
*/
