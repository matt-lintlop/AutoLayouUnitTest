//
//  ViewController.swift
//  AutoLayouUnitTest
//
//  Created by Matt Lintlop on 7/5/18.
//  Copyright © 2018 Matt Lintlop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var blueView: UIView!
    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let testViews: [UIView] = [blueView, redView, greenView]
        validateLayoutForViews(testViews)
    }


}

