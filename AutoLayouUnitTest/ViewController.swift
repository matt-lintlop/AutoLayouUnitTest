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
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    var testViews: [UIView]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testViews = [blueView, greenView, blueView]
}


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
   }
    
    override func viewDidAppear(_ animated: Bool) {
        validateLayoutForViews(testViews!)
    }
}

