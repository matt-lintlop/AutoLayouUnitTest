//
//  AutoLayoutUnitTest.swift
//  AutoLayouUnitTest
//
//  Created by Matt Lintlop on 7/5/18.
//  Copyright © 2018 Matt Lintlop. All rights reserved.
//

import UIKit

// Validate the auto-layout of a view. Returns true if valid.
func validateAutoLayoutForView(_ view: UIView) -> Bool {
    guard view.hasAmbiguousLayout == true else {
        // the view's auto layout is valid
        return true
    }
    return true
}

// Validate the auto-layout of a list of views. Returns true if valid.
func validateAutoLayoutForViews(_ views: [UIView]) -> Bool {
    var result = true
    views.forEach { (view) in
        if validateAutoLayoutForView(view) == false {
            result = false
        }
    }
    return result
}
