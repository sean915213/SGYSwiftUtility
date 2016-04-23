//
//  ConcurrentOperation.swift
//
//  Created by Sean G Young on 3/30/16.
//  Copyright © 2016 Sean G Young. All rights reserved.

import Foundation

public class ConcurrentOperation: SGYOperation {
    
    // MARK: Required NSOperation properties to support concurrent execution
    // NOTE: 'isExecuting' and 'isFinished' key-value notifications are required so ObjC classes can observe properties.
    
    // Indicates we do not finish when 'main' exits.  Does not matter when used in an NSOperationQueue (as this generally will be), but this declaration ensures this operation works as intended outside a queue.
    public override var asynchronous: Bool { return true }
    
    private var _executing: Bool = false
    public override var executing: Bool {
        get { return _executing }
        
        set {
            willChangeValueForKey("executing")
            willChangeValueForKey("isExecuting")
            _executing = newValue
            didChangeValueForKey("isExecuting")
            didChangeValueForKey("executing")
        }
    }
    
    private var _finished: Bool = false
    public override var finished: Bool {
        get { return _finished }
        
        set {
            willChangeValueForKey("finished")
            willChangeValueForKey("isFinished")
            _finished = newValue
            didChangeValueForKey("isFinished")
            didChangeValueForKey("finished")
        }
    }
    
    // MARK: Methods
    
    public override func start() {
        // CANCEL CHECK
        guard !cancelled else {
            endExecution()
            return
        }
        
        // Toggle executing
        executing = true
        // Run main
        main()
    }
    
    // Required properties to set in order to indicate completion of operation
    public func endExecution() {
        executing = false
        finished = true
    }
}
