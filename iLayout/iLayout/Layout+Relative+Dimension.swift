//
//  Layout+Sibling+Dimension.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/23/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import UIKit

/**
    This extension exposes method to set dimensions of views in realtion to other view.
*/
public extension Layout {
    
    /**
        Makes the height of given view same as another view.
    
        :param: view
                Make height of this view same as equalTo view.
    
        :param: equalTo
                Given view's height will be set as equal to this view.
    
        :param: offset
                Offset to the height.
    
        :returns:
                Returns the created constraint.
    */
    @discardableResult
    public func makeWidthOfView(_ view: UIView, equalTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: equalTo,
            attribute: .width, 
            relatedBy: .equal,
            constant: offset)
    }
    
    /**
        Makes the width of given view same as another view.
    
        :param: view
                Make width of this view same as equalTo view.
    
        :param: equalTo
                Given view's width will be set as equal to this view.
    
        :param: offset
                Offset to the width.
    
        :returns:
                Returns the created constraint.
    */
    @discardableResult
    public func makeHeightOfView(_ view: UIView, equalTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: equalTo,
            attribute: .height, 
            relatedBy: .equal,
            constant: offset)
    }
    
    /**
        Makes the size of given view same as another view.
    
        :param: view
                Make size of this view same as equalTo view.
    
        :param: equalTo
                Given view's size will be set as equal to this view.
    
        :param: offsetWidth
                Offset to the width.
    
        :param: offsetHeight
                Offset to the width.
    
        :returns:
                Returns the two created constraints to set height and width.
    */
    @discardableResult
    public func makeSizeOfView(_ view: UIView, equalTo: UIView, offsetWidth: CGFloat = 0, offsetHeight: CGFloat = 0) -> [NSLayoutConstraint] {
        return
            [makeHeightOfView(view, equalTo: equalTo, offset: offsetHeight),
            makeWidthOfView(view, equalTo: equalTo, offset: offsetWidth)]
    }

    /**
        Makes the width of given view greater than or equal to another view.
    
        :param: view
                Make width of this view greater than or equal to `greaterOrEqualTo` view.
    
        :param: greaterOrEqualTo
                Given view's width will be set greater than or equal to this view.
    
        :param: offset
                Offset to the width.
    
        :returns:
                Returns the created constraint.
    */
    @discardableResult
    public func makeWidthOfView(_ view: UIView, greaterOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view, 
            toView: greaterOrEqualTo,
            attribute: .width, 
            relatedBy: .greaterThanOrEqual, 
            constant: offset)
    }
    
    /**
        Makes the height of given view greater than or equal to another view.
    
        :param: view
                Make height of this view greater than or equal to `greaterOrEqualTo` view.
    
        :param: greaterOrEqualTo
                Given view's height will be set greater than or equal to this view.
    
        :param: offset
                Offset to the height.
    
        :returns:
                Returns the created constraint.
    */
    @discardableResult
    public func makeHeightOfView(_ view: UIView, greaterOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: greaterOrEqualTo, 
            attribute: .height, 
            relatedBy: .greaterThanOrEqual, 
            constant: offset)
    }
    
    /**
        Makes the width of given view less than or equal to another view.
    
        :param: view
                Make width of this view less than or equal to `lessOrEqualTo` view.
    
        :param: lessOrEqualTo
                Given view's width will be set less than or equal to this view.
    
        :param: offset
                Offset to the width.
    
        :returns:
                Returns the created constraint.
    */
    @discardableResult
    public func makeWidthOfView(_ view: UIView, lessOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: lessOrEqualTo,
            attribute: .width, 
            relatedBy: .lessThanOrEqual,
            constant: offset)
    }
    
    /**
        Makes the height of given view less than or equal to another view.
    
        :param: view
                Make height of this view less than or equal to `lessOrEqualTo` view.
    
        :param: lessOrEqualTo
                Given view's height will be set less than or equal to this view.
    
        :param: offset
                Offset to the height.
    
        :returns:
                Returns the created constraint.
    */
    @discardableResult
    public func makeHeightOfView(_ view: UIView, lessOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: lessOrEqualTo,
            attribute: .height,
            relatedBy: .lessThanOrEqual,
            constant: offset)
    }

    /**
        Makes the width of give view relative to that of another view.
    
        :param: view
                Make width of this view relative to `relativeTo` view.
    
        :param: relativeTo
                Given view's width will be set relative to this view.
    
        :param: multiplier
                Relative multiplier.
    
        :returns:
                Returns created contraint.
    */
    @discardableResult
    public func makeWidthOfView(_ view: UIView, relativeTo: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        return makeAttributeOfView(view,
            relativeTo: relativeTo,
            attribute: NSLayoutAttribute.width,
            multiplier: multiplier);
    }
    
    /**
        Makes the height of give view relative to that of another view.
    
        :param: view
                Make height of this view relative to `relativeTo` view.
    
        :param: relativeTo
                Given view's height will be set relative to this view.
    
        :param: multiplier
                Relative multiplier.
    
        :returns:
            Returns created contraint.
    */
    @discardableResult
    public func makeHeightOfView(_ view: UIView, relativeTo: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        return makeAttributeOfView(view,
            relativeTo: relativeTo,
            attribute: NSLayoutAttribute.height,
            multiplier: multiplier);
    }
    
    
    private func makeAttributeOfView(_ view: UIView, relativeTo: UIView, attribute: NSLayoutAttribute, multiplier: CGFloat) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
            attribute: attribute,
            relatedBy: .equal,
            toItem: relativeTo,
            attribute: attribute,
            multiplier: multiplier,
            constant: 0))
        
        return constraints.last!
    }

    private func makeView(_ view: UIView, toView: UIView, attribute: NSLayoutAttribute, relatedBy: NSLayoutRelation, constant: CGFloat) -> NSLayoutConstraint {
        
        constraints.append(NSLayoutConstraint(item: view,
                            attribute: attribute,
                            relatedBy: relatedBy,
                            toItem: toView,
                            attribute: attribute,
                            multiplier: 1,
                            constant: constant))
        return constraints.last!
        
    }
}
