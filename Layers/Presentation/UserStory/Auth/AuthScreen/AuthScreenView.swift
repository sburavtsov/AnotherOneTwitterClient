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
    func signIn()
}

// MARK: - View Controller
final class AuthScreenViewController:
    ViperViewController
    , AuthScreenViewInput
{
    var output: AuthScreenViewOutput!

    @IBAction func signInAction(sender: AnyObject)
    {
        output.signIn()
    }
    
    // MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /* Initialization here */
    }

    // MARK: View Input
}