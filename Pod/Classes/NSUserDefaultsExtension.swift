//
//  NSUserDefaultsExtension.swift
//  Pods
//
//  Created by Sean G Young on 2/13/16.
//
//

import Foundation

extension NSUserDefaults {
    func objectForKey<T>(defaultName: String) -> T? {
        
        return objectForKey(defaultName) as? T
    }
}
