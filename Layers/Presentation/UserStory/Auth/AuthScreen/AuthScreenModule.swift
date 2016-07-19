//
//  AuthScreenAuthScreenModule.swift
//  VIPER-Example
//
//  Created by Alexey on 19/07/2016.
//  Copyright © 2016 Company. All rights reserved.
//

import UIKit

// MARK: - Module interface
protocol AuthScreenModuleInput
{
    /*
     This are basic presenting functions
     You may uncomment any and its implementation in Presenter
     // Also would be great if you remove unnecessary functions and this comment as well in production
     */
    func present(using window: UIWindow, configure: (module: AuthScreenModuleInput) -> Void)
    func present(using nc: UINavigationController, configure: (module: AuthScreenModuleInput) -> Void)
    func present(using vc: UIViewController, with nc: UINavigationController?, configure: (module: AuthScreenModuleInput) -> Void)
    func presentAsChild(of vc:UIViewController, with nc: UINavigationController, configure: (module: AuthScreenModuleInput) -> Void) -> UIViewController?
}

//MARK: Output
protocol AuthScreenModuleOutput: class
{
	func signedIn()
}


// MARK: - Presenter
class AuthScreenPresenter: ViperPresenter, AuthScreenModuleInput, AuthScreenViewOutput, AuthScreenInteractorOutput
{
    weak var view: AuthScreenViewInput!
    var interactor: AuthScreenInteractorInput!
    var router: AuthScreenRouterInput!

    weak var output: AuthScreenModuleOutput?

    // MARK: - Module Input
    func present(using window:UIWindow, configure: (module:AuthScreenModuleInput) -> Void)
    {
        router.present(using: window)
        configure(module: self)
    }

    func present(using nc: UINavigationController, configure: (module: AuthScreenModuleInput) -> Void)
    {
        router.present(using: nc)
        configure(module: self)
    }

    func present(using vc:UIViewController, with nc: UINavigationController?, configure: (module: AuthScreenModuleInput) -> Void)
    {
        router.present(using: vc, with: nc)
        configure(module: self)
    }

    func presentAsChild(of vc:UIViewController, with nc: UINavigationController, configure: (module: AuthScreenModuleInput) -> Void) -> UIViewController?
    {
        let controller = router.present(asChildOf: vc, with: nc)
        configure(module: self)
        return controller
    }

    // MARK: - Interactor Output
    // MARK: - View Output
    
    func signIn()
    {
        output?.signedIn()
    }
    
}