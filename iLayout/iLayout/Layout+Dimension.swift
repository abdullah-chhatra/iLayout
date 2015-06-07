//
//  Layout+Dimention.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 12/27/14.
//  Copyright (c) 2014 Abdullah. All rights reserved.
//

import Foundation

/**
    This extension exposes methods to set dimentions of views.
*/
public extension Layout {
    
    /**
        Sets size of given view.
    
        :param: view
                View to set size.
    
        :param: size
                Size to be set.
    
        :returns:
                Returns two constraints to set height and width.
    */
    public func setForView(view: UIView, size: CGSize) -> [NSLayoutConstraint] {
        return [setForView(view, height: size.height),
                setForView(view, width: size.width)]
    }
    
    /**
        Sets height and width of given view.
    
        :param: view
                View to set height and width.
    
        :param: width
                Width to be set.
    
        :param: height
                Height to be set.
    
        :returns:
                Returns two constraints to set height and width.
    */
    public func setForView(view: UIView, width: CGFloat, height: CGFloat) -> [NSLayoutConstraint] {
        return [setForView(view, width: width),
                setForView(view, height: height)]
    }
    
    /**
        Sets height of given view.
    
        :param: view
                View to set height.
    
        :param: height
                Height to be set.
        
        :returns:
                Returns constraints to set height.
    */
    public func setForView(view: UIView, height: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Height,
                            relatedBy: .Equal,
                            constant: height))
        return constraints.last!
    }
    
    /**
        Sets width of given view.
    
        :param: view
                View to set width.
    
        :param: width
                Width to be set.
    
        :returns:
                Returns constraints to set width.
    */

    public func setForView(view: UIView, width: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Width,
                            relatedBy: .Equal,
                            constant: width))
        return constraints.last!
    }

    /**
        Sets height of given view less than or equal to given value.
    
        :param: view
                View to set height.
    
        :param: heightLessOrEqual
                Height of view will be set less than or equal to this value.
    
        :returns:
            Returns constraints to set height less than or equal to given value.
    */
    public func setForView(view: UIView, heightLessOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Height,
                            relatedBy: .LessThanOrEqual,
                            constant: heightLessOrEqual))
        return constraints.last!
    }
    
    /**
        Sets height of given view greater than or equal to given value.
    
        :param: view
                View to set height.
    
        :param: heightGreaterOrEqual
                Height of view will be set greater than or equal to this value.
    
        :returns:
                Returns constraints to set height greater than or equal to given value.
    */
    public func setForView(view: UIView, heightGreaterOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Height,
                            relatedBy: .GreaterThanOrEqual,
                            constant: heightGreaterOrEqual))
        return constraints.last!
    }

    /**
        Sets width of given view less than or equal to given value.
    
        :param: view
                View to set width.
    
        :param: widthLessOrEqual
                Width of view will be set less than or equal to this value.
    
        :returns:
                Returns constraints to set width less than or equal to given value.
    */
    public func setForView(view: UIView, widthLessOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Width,
                            relatedBy: .LessThanOrEqual,
                            constant: widthLessOrEqual))
        return constraints.last!
    }
    
    /**
        Sets width of given view greater than or equal to given value.
    
        :param: view
                View to set width.
    
        :param: widthGreaterOrEqual
                Width of view will be set greater than or equal to this value.
    
        :returns:
                Returns constraints to set width greater than or equal to given value.
    */
    public func setForView(view: UIView, widthGreaterOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Width,
                            relatedBy: .GreaterThanOrEqual,
                            constant: widthGreaterOrEqual))
        return constraints.last!
    }

    private func setForView(view: UIView, attribute: NSLayoutAttribute, relatedBy: NSLayoutRelation, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                            attribute: attribute,
                            relatedBy: relatedBy,
                            toItem: nil,
                            attribute: .NotAnAttribute,
                            multiplier: 1,
                            constant: constant)
    }
}