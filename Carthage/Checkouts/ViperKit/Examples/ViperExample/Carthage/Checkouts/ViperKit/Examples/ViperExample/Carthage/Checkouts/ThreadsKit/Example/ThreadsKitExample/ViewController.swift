//
//  ViewController.swift
//  ThreadsKitExample
//
//  Created by Maksim Bazarov on 22.05.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit
import ThreadsKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchToMainQueue { 
            //
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

