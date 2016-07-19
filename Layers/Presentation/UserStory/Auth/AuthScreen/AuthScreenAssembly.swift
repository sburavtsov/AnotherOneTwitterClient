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
    class func createModule(output output: AuthScreenModuleOutput?) -> AuthScreenModuleInput
    {
        let vc = R.storyboard.authScreen.authScreenViewController()!
        let interactor = AuthScreenInteractor()
        let presenter = AuthScreenPresenter()
        let router = AuthScreenRouter()

        router.viewController = vc

        vc.output = presenter

        interactor.output = presenter

        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        presenter.output = output

        return presenter
    }
}
