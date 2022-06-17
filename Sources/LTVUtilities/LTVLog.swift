//
//  LTVLog.swift
//  
//
//  Created by MAC MINI on 17/06/2022.
//

import Foundation

public struct LTVLog {
    
    public static func log(_ items: Any...) {
        #if DEBUG
        print(items)
        #endif
    }
    
}
