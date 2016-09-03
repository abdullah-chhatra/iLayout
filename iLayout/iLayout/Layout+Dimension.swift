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
    @discardableResult
    public func setForView(_ view: UIView, size: CGSize) -> [NSLayoutConstraint] {
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
    @discardableResult
    public func setForView(_ view: UIView, width: CGFloat, height: CGFloat) -> [NSLayoutConstraint] {
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
    @discardableResult
    public func setForView(_ view: UIView, height: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .height,
                            relatedBy: .equal,
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
    @discardableResult
    public func setForView(_ view: UIView, width: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .width,
                            relatedBy: .equal,
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
    @discardableResult
    public func setForView(_ view: UIView, heightLessOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .height,
                            relatedBy: .lessThanOrEqual,
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
    @discardableResult
    public func setForView(_ view: UIView, heightGreaterOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .height,
                            relatedBy: .greaterThanOrEqual,
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
    @discardableResult
    public func setForView(_ view: UIView, widthLessOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .width,
                            relatedBy: .lessThanOrEqual,
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
    @discardableResult
    public func setForView(_ view: UIView, widthGreaterOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .width,
                            relatedBy: .greaterThanOrEqual,
                            constant: widthGreaterOrEqual))
        return constraints.last!
    }

    private func setForView(_ view: UIView, attribute: NSLayoutAttribute, relatedBy: NSLayoutRelation, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                            attribute: attribute,
                            relatedBy: relatedBy,
                            toItem: nil,
                            attribute: .notAnAttribute,
                            multiplier: 1,
                            constant: constant)
    }
}
