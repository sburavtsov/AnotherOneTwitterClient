//
//  ViperRouter.swift
//  WendysTeam
//
//  Created by Maksim Bazarov on 24.04.16.
//  Copyright © 2016 WendysTeam. All rights reserved.
//

import UIKit

class ViperRouter
{
    weak var window : UIWindow?
    weak var navigationController : UINavigationController?
    
    
    /**
     Present as child of parent view controller
     
     - parameter vc: View controller for presenting
     - parameter parent: Parent view controller for presenting from
     */
    func presentChild(vc: UIViewController, from parent: UIViewController)
    {
        parent.addChildViewController(vc)
        vc.view.frame = parent.view.bounds
        parent.view.addSubview(vc.view)
        vc.didMoveToParentViewController(parent)
    }

    
    /**
     Present as modal from parent view controller
     
     - parameter vc: View controller for presenting
     - parameter parent: Parent view controller for presenting from
     */
    func presentModal(vc: UIViewController, from parent: UIViewController)
    {
        parent.presentViewController(vc, animated: true, completion: { })
    }
    
    /**
     Present as *window* root view controller
     
     - parameter vc: View controller for presenting
     - parameter window: Window for presenting from
     */
    func present(vc: UIViewController, using window:UIWindow)
    {
        let nc = UINavigationController(rootViewController: vc)
        nc.navigationBarHidden = true
        window.rootViewController = nc
        window.makeKeyAndVisible()
        navigationController = nc
        
        self.window = window
    }

    
    /**
     Present in navigation controller
     
     - parameter vc: View controller for presenting
     - parameter nc: Navigation controller for pushing
     */
    func present(vc: UIViewController, using nc: UINavigationController)
    {
        if nc.topViewController != vc {
            navigationController = nc
            nc.pushViewController(vc, animated: true)
        }
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
    
    
    
    
    
    ///
    
    deinit
    {
        print("[D] \(self) destroed")
    }
    
    
    
}
