//
//  MainScreenMainScreenPresenter.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 24/05/2016.
//  Copyright © 2016 Maksim Bazarov (bazaroffma@gmail.com). All rights reserved.
//

import UIKit

class MainScreenPresenter : MainScreenModuleInput, MainScreenViewOutput, MainScreenInteractorOutput
{
    var view: MainScreenViewInput!
    var interactor: MainScreenInteractorInput!
    var router: MainScreenRouterInput!
	
	weak var output: MainScreenModuleOutput?
	
	// MARK: - Module Input
		
	/* 
		... 
		Add presenting methods here, look it up in ViperRouter 
	*/
		
		
	// MARK: - Interactor Output
	// MARK: - View Output
	
}
