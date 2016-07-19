//
//  MainScreenMainScreenAssembly.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 24/05/2016.
//  Copyright © 2016 Maksim Bazarov (bazaroffma@gmail.com). All rights reserved.
//

import UIKit

class MainScreenAssembly 
{
    class func createModule(output output: MainScreenModuleOutput?) -> MainScreenModuleInput 
    {
        let vc = initializeViewController()
        let interactor = MainScreenInteractor()
        let presenter = MainScreenPresenter()
        let router = MainScreenRouter()

        router.presenter = presenter
		router.viewController = vc

        vc.output = presenter

        interactor.output = presenter

        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
		presenter.output = output

        return presenter
    }
	
	private class func initializeViewController() -> MainScreenViewController 
	{
	        let sb = UIStoryboard(name: "MainScreen", bundle: nil)
	        let vc = sb.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController
    
	        return vc
	} 
}
