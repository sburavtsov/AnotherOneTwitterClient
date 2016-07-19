//
//  MainScreenMainScreenViewController.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 24/05/2016.
//  Copyright © 2016 Maksim Bazarov (bazaroffma@gmail.com). All rights reserved.
//

import UIKit


// MARK: - Interface
protocol MainScreenViewInput: class
{
    
}

protocol MainScreenViewOutput : class
{
    
}


// MARK: - View Controller
final class MainScreenViewController:
    ViperViewController
    , MainScreenViewInput
{
    var output: MainScreenViewOutput!

    // MARK: - Life cycle
	
    override func viewDidLoad() 
	{
        super.viewDidLoad()
		/* Initialization here */
    }
	
	
	// MARK: View Input
	
}
