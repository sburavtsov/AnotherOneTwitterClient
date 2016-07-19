//
//  AuthScreenAuthScreenAssembly.swift
//  VIPER-Example
//
//  Created by Alexey on 19/07/2016.
//  Copyright © 2016 Company. All rights reserved.
//

import UIKit

class AuthScreenAssembly
{
    
    class func createModule(configure: (module: AuthScreenModuleInput) -> ()) -> AuthScreenViewController
    {
        let vc = R.storyboard.authScreen.authScreenViewController()!
        let interactor = AuthScreenInteractor()
        let presenter = AuthScreenPresenter()
        let router = AuthScreenRouter()
        
        
        interactor.output = presenter
        
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        
        configure(module: presenter)

        vc.output = presenter
        vc.router = router
        return vc
    }
    
}
