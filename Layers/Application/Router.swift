//
//  MainRouter.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 19/07/16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class Router:
    AuthScreenModuleOutput
{
    weak var resources: Dependencies!
    
    init(dependencies: Dependencies)
    {
        self.resources = dependencies
    }
    
    // MARK: Router interface
    func start()
    {
        AuthScreenAssembly.createModule { module in
            module.setupDelegate(self)
            }.present(fromWindow: resources.window)
    }

    // MARK: Auth module output
    func signedIn()
    {
        MainScreenAssembly.createModule { module in
            }.present(fromWindow: resources.window)
    }
}
