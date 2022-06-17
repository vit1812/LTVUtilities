//
//  LTVLog.swift
//  
//
//  Created by MAC MINI on 17/06/2022.
//

import Foundation

struct LTVLog {
    
    static func log(_ items: Any...) {
        #if DEBUG
        print(items)
        #endif
    }
    
}
