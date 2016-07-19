//
//  MainScreenMainScreenInteractor.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 24/05/2016.
//  Copyright © 2016 Maksim Bazarov (bazaroffma@gmail.com). All rights reserved.
//

// MARK: - Interface
protocol MainScreenInteractorInput : class
{
    
}

//MARK: Output
protocol MainScreenInteractorOutput : class
{
    
}

// MARK: - Interactor
final class MainScreenInteractor:
    ViperInteractor
    , MainScreenInteractorInput
{
    weak var output: MainScreenInteractorOutput!

}