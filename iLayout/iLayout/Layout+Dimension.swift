//
//  Layout+Dimention.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 12/27/14.
//  Copyright (c) 2014 Abdullah. All rights reserved.
//

import Foundation

public extension Layout {
    
    
    public func setForView(view: UIView, size: CGSize) -> [NSLayoutConstraint] {
        return [setForView(view, height: size.height),
                setForView(view, width: size.width)]
    }
    
    public func setForView(view: UIView, height: CGFloat, width: CGFloat) -> [NSLayoutConstraint] {
        return [setForView(view, height: height),
                setForView(view, width: width)]
    }
    
    public func setForView(view: UIView, height: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Height,
                            relatedBy: .Equal,
                            constant: height))
        return constraints.last!
    }
    
    public func setForView(view: UIView, width: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Width,
                            relatedBy: .Equal,
                            constant: width))
        return constraints.last!
    }

    public func setForView(view: UIView, heightLessOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Height,
                            relatedBy: .LessThanOrEqual,
                            constant: heightLessOrEqual))
        return constraints.last!
    }
    
    public func setForView(view: UIView, heightGreaterOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Height,
                            relatedBy: .GreaterThanOrEqual,
                            constant: heightGreaterOrEqual))
        return constraints.last!
    }

    public func setForView(view: UIView, widthLessOrEqual: CGFloat) -> NSLayoutConstraint {
        constraints.append(setForView(view,
                            attribute: .Width,
                            relatedBy: .LessThanOrEqual,
                            constant: widthLessOrEqual))
        return constraints.last!
    }
    
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