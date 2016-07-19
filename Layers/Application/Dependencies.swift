//
//  ViperExampleDependencies.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 19/07/16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class Dependencies
{
    // Application main window
    weak var window: UIWindow!
    
    var router: Router!
    var mainScreen: MainScreenModuleInput!
    var authScreen: AuthScreenModuleInput!

    init(window: UIWindow)
    {
        self.window = window
        setup()
    }
    
    func setup()
    {
        router = Router(dependencies: self)
        mainScreen = MainScreenAssembly.createModule(output: nil)
		authScreen = AuthScreenAssembly.createModule(output: router)
    }
    
    
    
}
