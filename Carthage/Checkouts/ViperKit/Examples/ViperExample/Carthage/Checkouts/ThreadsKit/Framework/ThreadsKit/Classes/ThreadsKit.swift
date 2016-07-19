//
//  ThreadsKit.swift
//  SwiftEasyThreads
//
//  Created by Maksim Bazarov on 22.05.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import Foundation

public func DispatchToMainQueue(code:()->())
{
    if NSThread.isMainThread() {
        code();
    } else {
        dispatch_async(dispatch_get_main_queue(), {
            code()
        })
    }
    
}

public func DispatchToBackground(code: ()->()) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) {
        code()
    }
}

