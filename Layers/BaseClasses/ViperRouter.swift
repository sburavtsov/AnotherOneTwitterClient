//
//  ViperRouter.swift
//  WendysTeam
//
//  Created by Maksim Bazarov on 24.04.16.
//  Copyright © 2016 WendysTeam. All rights reserved.
//

import UIKit

protocol ViperRouterInput {
    
    /**
     Presents module in window
     
     - parameter window: UIWindow for presenting
     */
    func present(using window:UIWindow)
    
    
    /**
     Presents module in navigation stack
     
     - parameter nc: navigation controller for presenting
     
     */
    func present(using nc: UINavigationController)

    
    /**
     Presents own controller in provided controller
     
     - parameter vc: Will use this vc for presenting
     - parameter nc: Just stores nc for future purposes e.g. poping or pushing in navigation stack

     */
    func present(using vc:UIViewController, with nc: UINavigationController?)

    
    /**
     Returns controller for presenting
     
     - parameter vc: For future purposes don't used now
     - parameter nc: Just stores nc for future purposes e.g. poping or pushing in navigation stack
     
     - returns: Module's view controller for presenting as childviewcontroller
     */
    func present(asChildOf vc:UIViewController, with nc: UINavigationController?) -> UIViewController?

    
    /**
     Pops current screen, only works if module presented in navigation stack
     */
    func popCurrentScreen()
    
    /**
     Pops to root controller, only works if module presented in navigation stack
     */
    func popToRoot()
    
}


class ViperRouter : ViperRouterInput
{
    
    
    weak var viewController : UIViewController?
    
    weak var window : UIWindow?
    
    var navigationController : UINavigationController?
    
    ///
    
    deinit
    {
        print("[D] \(self) destroed")
    }

    
    // MARK: Navigation
    
    func present(using window:UIWindow)
    {
        if let vc = viewController {
            navigationController = UINavigationController(rootViewController: vc)
            navigationController!.navigationBarHidden = true
            window.rootViewController = navigationController!
            window.makeKeyAndVisible()
            
            self.window = window
        }
    }
    
    func present(using nc: UINavigationController)
    {
        if let vc = viewController where nc.topViewController != vc
        {
            navigationController = nc
            nc.pushViewController(vc, animated: true)
        }
        
    }

    func present(using vc:UIViewController, with nc: UINavigationController?)
    {
        if let controller = viewController
        {
            navigationController = nc
            vc.presentViewController(controller, animated: true, completion: { })
        }
    }
    
    func present(asChildOf vc:UIViewController, with nc: UINavigationController?) -> UIViewController?
    {
        if let controller = viewController {
            navigationController = nc
            return controller
        }
        
        return nil
    }

    
    // MARK: Private
    
    func popCurrentScreen()
    {
        if let nc = navigationController {
            nc.popViewControllerAnimated(true)
        }
    }
    
    func popToRoot()
    {
        if let nc = navigationController {
            nc.popToRootViewControllerAnimated(true)
        }
    }
    
    // MARK: Private
    
    /**
     For presenting childs
     
     - parameter child: Child view controller for presenting
     */
    func presentChildController(child: UIViewController)
    {
        if let vc = viewController {
            vc.addChildViewController(child)
            child.view.frame = vc.view.bounds
            vc.view.addSubview(child.view)
            child.didMoveToParentViewController(vc)
        }
    }
    
    
}
