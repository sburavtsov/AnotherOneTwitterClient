//
//  MainScreenMainScreenPresenter.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 24/05/2016.
//  Copyright © 2016 Maksim Bazarov (bazaroffma@gmail.com). All rights reserved.
//

import UIKit


// MARK: - Module interface
protocol MainScreenModuleInput
{
    /*
     This are basic presenting functions
     You may uncomment any and its implementation in Presenter
     // Also would be great if you remove unnecessary functions and this comment as well in production
     */
    func present(using window:UIWindow, configure: (module:MainScreenModuleInput) -> ())
    func present(using nc: UINavigationController, configure: (module: MainScreenModuleInput) -> ())
    func present(using vc:UIViewController, with nc: UINavigationController?, configure: (module: MainScreenModuleInput) -> ())
    func presentAsChild(of vc:UIViewController, with nc: UINavigationController, configure: (module: MainScreenModuleInput) -> ()) -> UIViewController?
    
}

//MARK: Output
protocol MainScreenModuleOutput : class
{
    
}


// MARK: - Presenter
class MainScreenPresenter : MainScreenModuleInput, MainScreenViewOutput, MainScreenInteractorOutput
{
    weak var view: MainScreenViewInput!
    var interactor: MainScreenInteractorInput!
    var router: MainScreenRouterInput!
	
	weak var output: MainScreenModuleOutput?
	
	// MARK: - Module Input
		
    func present(using window:UIWindow, configure: (module:MainScreenModuleInput) -> ())
    {
        router.present(using: window)
        configure(module: self)
    }
    
    func present(using nc: UINavigationController, configure: (module: MainScreenModuleInput) -> ())
    {
        router.present(using: nc)
        configure(module: self)
    }
    
    func present(using vc:UIViewController, with nc: UINavigationController?, configure: (module: MainScreenModuleInput) -> ())
    {
        router.present(using: vc, with: nc)
        configure(module: self)
    }
    
    func presentAsChild(of vc:UIViewController, with nc: UINavigationController, configure: (module: MainScreenModuleInput) -> ()) -> UIViewController?
    {
        let controller = router.present(asChildOf: vc, with: nc)
        configure(module: self)
        return controller
    }

		
	// MARK: - Interactor Output
	// MARK: - View Output
	
}
