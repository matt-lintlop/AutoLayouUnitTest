//
//  AutoLayoutUnitTest.swift
//  AutoLayouUnitTest
//
//  Created by Matt Lintlop on 7/5/18.
//  Copyright © 2018 Matt Lintlop. All rights reserved.
//

import UIKit
import QuartzCore
import Foundation

// Validate the auto-layout of a view. Returns true if valid.
func validateLayoutForView(_ view: UIView)  {
    DispatchQueue.main.async {
        view.setNeedsLayout()
        view.layoutIfNeeded()
        
        if view.hasAmbiguousLayout == false  {
            // the view's auto layout is valid
            print("View AutoLayout Is Valid: \(view.accessibilityIdentifier ?? "???")")
            return
        }
        let horizontalConstraints = view.constraintsAffectingLayout(for: .horizontal)
        horizontalConstraints.forEach { (constraint) in
            print("H constraint for view ID = \(view.accessibilityIdentifier ?? "?"): \(constraint)")
        }
        let verticalConstraints = view.constraintsAffectingLayout(for: .vertical)
        verticalConstraints.forEach { (constraint) in
            print("V constraint for view ID = \(view.accessibilityIdentifier ?? "?"): \(constraint)")
        }
        
        view.exerciseAmbiguityInLayout()
        CATransaction.flush()
        
        print("ERROR: View AutoLayout Is Invalid: \(view.accessibilityIdentifier ?? "?")")
    }
}

// Validate the auto-layout of a list of views. Returns true if valid.
func validateLayoutForViews(_ views: [UIView]) -> Bool {
    var result = true
    views.forEach { (view) in
        validateLayoutForView(view)
    }
    return result
}

