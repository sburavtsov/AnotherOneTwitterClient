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
    
    var mainScreen: MainScreenModuleInput  {
        return MainScreenAssembly.createModule(output: nil)
    }
    
    var authScreen: AuthScreenModuleInput {
        return AuthScreenAssembly.createModule(output: router)
    }

    init(window: UIWindow)
    {
        self.window = window
        setup()
    }
    
    func setup()
    {
        router = Router(dependencies: self)
    }
    
    
    
}
