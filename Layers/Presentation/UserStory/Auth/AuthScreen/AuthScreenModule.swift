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
    func setupDelegate(output: AuthScreenModuleOutput)
}

//MARK: Output
protocol AuthScreenModuleOutput: class
{
	func signedIn()
}


// MARK: - Presenter
final class AuthScreenPresenter:
    ViperPresenter
    , AuthScreenModuleInput
    , AuthScreenViewOutput
    , AuthScreenInteractorOutput
{
    weak var view: AuthScreenViewInput!
    var interactor: AuthScreenInteractorInput!
    var router: AuthScreenRouterInput!

    weak var output: AuthScreenModuleOutput?
    
    func setupDelegate(output: AuthScreenModuleOutput)
    {
        self.output = output
    }
    
    
    // MARK: - Interactor Output
    
    
    // MARK: - View Output
    
    func signIn()
    {
        output?.signedIn()
    }
    
}