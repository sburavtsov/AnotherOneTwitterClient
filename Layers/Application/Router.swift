//
//  MainRouter.swift
//  ViperExample
//
//  Created by Maksim Bazarov on 19/07/16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class Router
{
    weak var resources: Dependencies!
    
    init(dependencies: Dependencies)
    {
        self.resources = dependencies
    }
    
    // MARK: Router interface
    func start()
    {
		let authenticated = false
		
		if authenticated {
			resources.mainScreen.present(using: resources.window) { module in
				module
			}
		} else {
			resources.authScreen.present(using: resources.window) { module in
				
			}
		}
    }
}

extension Router: AuthScreenModuleOutput
{
	func authenticated()
	{
		resources.mainScreen.present(using: resources.window) { module in
			module
		}
	}
}
