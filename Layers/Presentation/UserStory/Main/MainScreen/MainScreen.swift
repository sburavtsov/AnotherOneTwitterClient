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
    
    
}

//MARK: Output
protocol MainScreenModuleOutput : class
{
    
}


// MARK: - Presenter
class MainScreenPresenter:
    ViperPresenter
    , MainScreenModuleInput
    , MainScreenViewOutput
    , MainScreenInteractorOutput
{
    weak var view: MainScreenViewInput!
    weak var router: MainScreenRouterInput!
    var interactor: MainScreenInteractorInput!
    
	
	weak var output: MainScreenModuleOutput?
		
	// MARK: - Interactor Output
	// MARK: - View Output
	
}
