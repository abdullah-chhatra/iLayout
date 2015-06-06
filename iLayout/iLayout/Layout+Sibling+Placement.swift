//
//  Layout+Placement+Siblings.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import UIKit

public extension Layout {
    
    /**
     */
    public func placeView(view: UIView, below: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {

        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Bottom,
                            relatedBy: .Equal,
                            toItem: below,
                            attribute: .Top,
                            multiplier: 1,
                            constant: spacing))
        return constraints.last!
    }
    
    public func placeView(view: UIView, above: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Top,
                            relatedBy: .Equal,
                            toItem: above,
                            attribute: .Bottom,
                            multiplier: 1,
                            constant: -spacing))
        return constraints.last!
    }

    public func placeView(view: UIView, leftOf: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Right,
                            relatedBy: .Equal,
                            toItem: leftOf,
                            attribute: .Left,
                            multiplier: 1,
                            constant: spacing))
        return constraints.last!
    }
    
    public func placeView(view: UIView, rightOf: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Left,
                            relatedBy: .Equal,
                            toItem: rightOf,
                            attribute: .Right,
                            multiplier: 1,
                            constant: -spacing))
        return constraints.last!
    }
}
