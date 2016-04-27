//
//  AsyncOperation.swift
//
//  Created by Sean G Young on 3/30/16.
//  Copyright © 2016 Sean G Young. All rights reserved.

import Foundation

public class AsyncOperation: SGYOperation {
    
    // MARK: Required NSOperation properties to support asynchronous execution

    // Indicates we do not finish when `main` exits.  Does not matter when used in an NSOperationQueue (as this generally will be), but this declaration ensures this operation works as intended outside a queue.
    public override var asynchronous: Bool { return true }
    
    private var _executing: Bool = false
    override public var executing: Bool {
        get {
            return _executing
        }
        set {
            self.willChangeValueForKey("executing")
            self.willChangeValueForKey("isExecuting")
            _executing = newValue
            self.didChangeValueForKey("isExecuting")
            self.didChangeValueForKey("executing")
        }
    }
    
    private var _finished: Bool = false
    override public var finished: Bool {
        get {
            return _finished
        }
        set {
            self.willChangeValueForKey("finished")
            self.willChangeValueForKey("isFinished")
            _finished = newValue
            self.didChangeValueForKey("isFinished")
            self.didChangeValueForKey("finished")
        }
    }
    
    // MARK: Methods
    
    public override func start() {
        // Cancel check
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
