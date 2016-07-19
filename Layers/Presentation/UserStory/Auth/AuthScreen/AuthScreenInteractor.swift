//
//  AuthScreenAuthScreenInteractor.swift
//  VIPER-Example
//
//  Created by Alexey on 19/07/2016.
//  Copyright © 2016 Company. All rights reserved.
//

// MARK: - Interface
protocol AuthScreenInteractorInput: class
{

}

//MARK: Output
protocol AuthScreenInteractorOutput: class
{

}

// MARK: - Interactor
class AuthScreenInteractor: AuthScreenInteractorInput
{
    weak var output: AuthScreenInteractorOutput!
}