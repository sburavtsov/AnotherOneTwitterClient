//
//  AuthScreenAuthScreenView.swift
//  VIPER-Example
//
//  Created by Alexey on 19/07/2016.
//  Copyright © 2016 Company. All rights reserved.
//

import UIKit

// MARK: - Interface
protocol AuthScreenViewInput: class
{

}

protocol AuthScreenViewOutput: class
{

}

// MARK: - View Controller
class AuthScreenViewController: ViperViewController, AuthScreenViewInput
{
    var output: AuthScreenViewOutput!

    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /* Initialization here */
    }

    // MARK: View Input
}