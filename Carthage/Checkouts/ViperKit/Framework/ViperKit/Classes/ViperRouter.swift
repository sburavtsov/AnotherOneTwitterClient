//
//  ViperRouter.swift
//  WendysTeam
//
//  Created by Maksim Bazarov on 24.04.16.
//  Copyright © 2016 WendysTeam. All rights reserved.
//

import UIKit

public protocol ViperRouterInput {
    
    /**
     Presents module in window
     
     - parameter window: UIWindow for presenting
     */
    func present(fromWindow window: UIWindow)
    
    /**
     Presents module in navigation stack
     
     - parameter nc: navigation controller for presenting
     
     */
    func present(inNavigationStack nc: UINavigationController)
    
    /**
     Returns controller for presenting
     
     - parameter vc: For future purposes don't used now
     - parameter nc: Just stores nc for future purposes e.g. poping or pushing in navigation stack
     
     - returns: Module's view controller for presenting as childviewcontroller
     */
    func present(asChildOf vc: UIViewController, navigationController nc: UINavigationController) ->UIViewController?
    
    /**
     Pops current screen, only works if module presented in navigation stack
     */
    func popCurrentScreen()
    
    /**
     Pops to root controller, only works if module presented in navigation stack
     */
    func popToRoot()
    
}


public class ViperRouter : ViperRouterInput
{
    weak var window : UIWindow?
    weak var viewController: UIViewController?
    var navigationController : UINavigationController?
    
    // MARK: Window
    
    public func present(fromWindow window: UIWindow)
    {
        if let vc = viewController {
            navigationController = UINavigationController(rootViewController: vc)
            navigationController!.navigationBarHidden = true
            window.rootViewController = navigationController!
            window.makeKeyAndVisible()
            
            self.window = window
        }
    }
    
    // MARK: Navigation
    
    func presentController(vc: UIViewController)
    {
        if let nc = navigationController where nc.topViewController != vc
        {
            nc.pushViewController(vc, animated: true)
        }
    }
    
    
    public func present(inNavigationStack nc: UINavigationController)
    {
        if let vc = viewController where nc.topViewController != vc
        {
            navigationController = nc
            nc.pushViewController(vc, animated: true)
        }
    }
    
    public func popCurrentScreen()
    {
        if let nc = navigationController {
            nc.popViewControllerAnimated(true)
        }
    }
    
    public func popToRoot()
    {
        if let nc = navigationController {
            nc.popToRootViewControllerAnimated(true)
        }
    }
    
    // MARK: Child
    public func present(asChildOf vc: UIViewController, navigationController nc: UINavigationController) -> UIViewController?
    {
        
        if let controller = viewController {
            navigationController = nc
            return controller
        }
        
        return nil
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
