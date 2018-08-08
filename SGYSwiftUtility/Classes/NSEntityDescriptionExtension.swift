//
//  NSEntityDescriptionExtension.swift
//  SGYSwiftUtility
//
//  Created by Sean G Young on 8/8/18.
//

import Foundation
import CoreData

public protocol NamedManagedObject where Self: NSManagedObject {
    static var entityName: String { get }
}

extension NSEntityDescription {
    public class func insertNewObject<T>(forEntityClass entityClass: T.Type, into context: NSManagedObjectContext) -> T where T: NamedManagedObject {
        return insertNewObject(forEntityName: entityClass.entityName, into: context) as! T
    }
}

extension NamedManagedObject {
    public static var entityName: String { return String(describing: self) }
}
