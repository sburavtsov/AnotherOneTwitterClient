//
//  AppDelegate.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 24.05.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{

    var dependencies: Dependencies!
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        dependencies = Dependencies(window: window!)
        dependencies.router.start()
        
        return true
    }

    

}

