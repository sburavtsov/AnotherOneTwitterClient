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
        let vc = R.storyboard.mainScreen.mainScreenViewController()!
        let interactor = MainScreenInteractor()
        let presenter = MainScreenPresenter()
        let router = MainScreenRouter()
        
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
