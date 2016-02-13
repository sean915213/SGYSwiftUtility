//
//  CollectionTypeExtension.swift
//  SGYSwiftUtility
//
//  Created by Sean G Young on 2/13/16.
//
//

import Foundation

extension CollectionType {
    
    /**
     Returns the first object passing the test represented by the provided function.
     
     :param: fn A function that takes each object as a parameter and returns a boolean value.
     
     :returns: The first object where fn() returns true, or nil.
     */
    func find(@noescape fn: (Generator.Element) -> Bool) -> Generator.Element? {
        // Return first element where fn return is true
        for val in self { if fn(val) { return val } }
        return nil
    }
    
    func any(@noescape fn: (Generator.Element) -> Bool) -> Bool {
        for val in self { if fn(val) { return true } }
        return false
    }
}

extension Set {
    
    func map<U: Hashable>(@noescape fn: (Element) -> U) -> Set<U> {
        var mappedSet = Set<U>()
        for obj in self { mappedSet.insert(fn(obj)) }
        return mappedSet
    }
}

extension Dictionary {
    
    mutating func merge(dict: [Key: Value]) {
        for (k, v) in dict { updateValue(v, forKey: k) }
    }
}