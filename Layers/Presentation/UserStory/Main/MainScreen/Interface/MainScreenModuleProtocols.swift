//
//  MainScreen Module Protocols
//  ViperExample
//
//  Created by Maksim Bazarov on 24/05/2016.
//  Copyright © 2016 Maksim Bazarov (bazaroffma@gmail.com). All rights reserved.
//

import UIKit
import Foundation

protocol MainScreenModuleInput
{
    /* 
     This are basic presenting functions
     You may uncomment any and its implementation in Presenter
     // Also would be great if you remove unnecessary functions and this comment as well in production
     */
    func present(using window:UIWindow, configure: (module:MainScreenModuleInput) -> ())
    func present(using nc: UINavigationController, configure: (module: MainScreenModuleInput) -> ())
    func present(using vc:UIViewController, with nc: UINavigationController?, configure: (module: MainScreenModuleInput) -> ())
    func presentAsChild(of vc:UIViewController, with nc: UINavigationController, configure: (module: MainScreenModuleInput) -> ()) -> UIViewController?

}

//MARK: Output
protocol MainScreenModuleOutput : class
{
		
}


// !-- ///////////////////////////////////////////////////////////////////////////////////// -/- ///
//MARK: - ROUTER input
protocol MainScreenRouterInput: ViperRouterInput
{

}

//MARK: - INTERACTOR
//MARK: Input
protocol MainScreenInteractorInput : class
{

}

//MARK: Output
protocol MainScreenInteractorOutput : class 
{

}
