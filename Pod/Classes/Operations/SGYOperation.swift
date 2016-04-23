//
//  SGYOperation.swift
//  Pods
//
//  Created by Sean G Young on 4/23/16.
//
//

import UIKit

class SGYOperation: NSOperation {
    
    // MARK: - Initialization
    
    override init() {
        self.logger = Logger(contextDescription: NSStringFromClass(self.dynamicType))
        super.init()
    }
    
    // MARK: - Properties
    
    var logger: Logger
}
