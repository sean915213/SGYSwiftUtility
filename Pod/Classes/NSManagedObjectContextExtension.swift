//
//  NSManagedObjectContextExtension.swift
//  SGYSwiftUtility
//
//  Created by Sean G Young on 2/13/16.
//
//

import Foundation
import CoreData

extension NSManagedObjectContext {
    
    func existingObjectWithID<T: NSManagedObject>(objectID: NSManagedObjectID) throws -> T {
        // Force cast since object not found will throw and if an object is found of the wrong type the caller messed up.
        return try existingObjectWithID(objectID) as! T
    }
    
    func executeMultiFetchRequest<T: NSManagedObject>(request: NSFetchRequest) throws -> [T] {
        // Force cast since a nil-array is never expected (error is throw instead) and it is caller's responsibility to be sure of the type.
        return try executeFetchRequest(request) as! [T]
    }
    
    func executeSingleFetchRequest<T: NSManagedObject>(request: NSFetchRequest) throws -> T? {
        // We only expect one entry so limit request
        request.fetchLimit = 1
        return try executeFetchRequest(request).first as? T
    }
}