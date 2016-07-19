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
    class func createModule(configure: (module: MainScreenModuleInput) -> ()) -> MainScreenViewController
    {
        let vc = R.storyboard.mainScreen.mainScreenViewController()!
        let interactor = MainScreenInteractor()
        let presenter = MainScreenPresenter()
        let router = MainScreenRouter()
        
        
        vc.output = presenter
        vc.router = router
        
        interactor.output = presenter
        
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        
        configure(module: presenter)
        return vc
    }
    
}
