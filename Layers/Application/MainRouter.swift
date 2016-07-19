//
//  MainRouter.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 19/07/16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class MainRouter
{
    weak var resources: ViperExampleDependencies!
    
    init(dependencies: ViperExampleDependencies)
    {
        self.resources = dependencies
    }
    
    // MARK: Router interface
    func start()
    {
        resources.mainScreen.present(using: resources.window) { module in
            
        }
    }
    
}
