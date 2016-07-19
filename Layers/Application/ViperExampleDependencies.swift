//
//  ViperExampleDependencies.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 19/07/16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class ViperExampleDependencies
{
    // Application main window
    weak var window: UIWindow!
    
    var router: MainRouter!
    var mainScreen: MainScreenModuleInput!
//    var authScreen: AuthScreenModuleInput!

    init(window: UIWindow)
    {
        self.window = window
        setup()
    }
    
    func setup()
    {
        router = MainRouter(dependencies: self)
        mainScreen = MainScreenAssembly.createModule(output: nil)
    }
    
    
    
}
