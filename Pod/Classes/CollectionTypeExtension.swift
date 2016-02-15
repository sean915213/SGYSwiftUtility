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
     Returns the first value passing the test represented by `predicate`.
     
     - parameter predicate: A function that returns `Bool` to indicate whether the test is passed or not.
     
     - throws: Rethrows any errors encountered executing `predicate`.
     
     - returns: The first value passing the test `predicate` or `nil` if no such object is found.
     */
    func find(@noescape predicate: (Generator.Element) throws -> Bool) rethrows -> Generator.Element? {
        guard let index = try indexOf(predicate) else { return nil }
        return self[index]
    }
    
    /**
     Returns whether any values in the `CollectionType` pass the test represented by `predicate`.
     
     - parameter predicate: A function that returns `Bool` to indicate whether the test is passed or not.
     
     - throws: Rethrows any errors encountered executing `predicate`.
     
     - returns: `true` if any value passes the test represented by `predicate`.  Otherwise returns `false`.
     */
    func any(@noescape predicate: (Generator.Element) throws -> Bool) rethrows -> Bool {
        return try indexOf(predicate) != nil
    }
}

extension Set {
    
    /**
     Provides an implementation of `SequenceType`'s `map` for Swift's `Set`.
     
     - parameter transform: A function that transform's each of `Set`'s `Element` to the provided type `T`.
     
     - throws: Rethrows any errors encountered executing `transform`.
     
     - returns: A new `Set` with values mapped using `transform`.
     */
    func map<T: Hashable>(@noescape transform: (Element) throws -> T) rethrows -> Set<T> {
        var mappedSet = Set<T>()
        for obj in self { mappedSet.insert(try transform(obj)) }
        return mappedSet
    }
}

extension Dictionary {
    
    /**
     Merges in-place the contents of `dictionary` with this dictionary's keys and values.
     
     - parameter dictionary: A dictionary with the same `Key` and `Value` types.
     */
    mutating func merge(otherDictionary dictionary: [Key: Value]) {
        for (k, v) in dictionary { updateValue(v, forKey: k) }
    }
}