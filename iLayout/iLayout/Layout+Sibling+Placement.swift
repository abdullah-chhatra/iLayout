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
    @discardableResult
    public func placeView(_ view: UIView, below: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {

        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .top,
                            relatedBy: .equal,
                            toItem: below,
                            attribute: .bottom,
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
    @discardableResult
    public func placeView(_ view: UIView, above: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .bottom,
                            relatedBy: .equal,
                            toItem: above,
                            attribute: .top,
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
    @discardableResult
    public func placeView(_ view: UIView, leftOf: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .right,
                            relatedBy: .equal,
                            toItem: leftOf,
                            attribute: .left,
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
    @discardableResult
    public func placeView(_ view: UIView, rightOf: UIView, spacing: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: .left,
                            relatedBy: .equal,
                            toItem: rightOf,
                            attribute: .right,
                            multiplier: 1,
                            constant: spacing))
        return constraints.last!
    }
}
