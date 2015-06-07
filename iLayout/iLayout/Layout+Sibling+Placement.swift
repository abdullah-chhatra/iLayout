//
//  Layout+Placement+Siblings.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import UIKit

/**
    This extension exposes method to palce view in relation to other views.
*/
public extension Layout {
    
    /**
        Places the given view below another view.
    
        :param: view
                This view will be placed below another view.
    
        :param: below
                Given view will be palced below this view.
    
        :param: spacing
                Spacing between the views.
    
        :returns:
                Returns created constraint.
     */
    public func placeView(view: UIView, below: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {

        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Top,
                            relatedBy: .Equal,
                            toItem: below,
                            attribute: .Bottom,
                            multiplier: 1,
                            constant: spacing))
        return constraints.last!
    }
    
    /**
        Places the given view above another view.
    
        :param: view
                This view will be placed above another view.
    
        :param: above
                Given view will be palced above this view.
    
        :param: spacing
                Spacing between the views.
    
        :returns:
                Returns created constraint.
    */
    public func placeView(view: UIView, above: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Bottom,
                            relatedBy: .Equal,
                            toItem: above,
                            attribute: .Top,
                            multiplier: 1,
                            constant: -spacing))
        return constraints.last!
    }

    /**
        Places the given view at left of another view.
    
        :param: view
                This view will be placed at left of another view.
    
        :param: leftOf
                Given view will be palced at left of this view.
    
        :param: spacing
                Spacing between the views.
    
        :returns:
                Returns created constraint.
    */
    public func placeView(view: UIView, leftOf: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Right,
                            relatedBy: .Equal,
                            toItem: leftOf,
                            attribute: .Left,
                            multiplier: 1,
                            constant: -spacing))
        return constraints.last!
    }
    
    /**
        Places the given view at right of another view.
    
        :param: view
                This view will be placed at right of another view.
    
        :param: rightOf
                Given view will be palced at right of this view.
    
        :param: spacing
                Spacing between the views.
    
        :returns:
                Returns created constraint.
    */
    public func placeView(view: UIView, rightOf: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .Left,
                            relatedBy: .Equal,
                            toItem: rightOf,
                            attribute: .Right,
                            multiplier: 1,
                            constant: spacing))
        return constraints.last!
    }
}
