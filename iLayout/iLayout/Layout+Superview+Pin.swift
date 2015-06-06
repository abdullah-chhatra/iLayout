//
//  Layout+Superview.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 1/17/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

public extension Layout {
    
    public func pinToTopEdgeOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Top,
                            toEdge: .Top,
                            constant: constant))
        return constraints.last!
    }
    
    public func pinToTopMarginOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Top,
                            toEdge: .TopMargin,
                            constant: constant))
        return constraints.last!
    }
    
    public func pinToBottomEdgeOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Bottom,
                            toEdge: .Bottom,
                            constant: -constant))
        return constraints.last!
    }

    public func pinToBottomMarginOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Bottom,
                            toEdge: .BottomMargin,
                            constant: -constant))
        return constraints.last!
    }

    public func pinToLeadingEdgeOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Leading,
                            toEdge: .Leading,
                            constant: constant))
        return constraints.last!
    }
    
    public func pinToLeadingMarginOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Leading,
                            toEdge: .LeadingMargin,
                            constant: constant))
        return constraints.last!
    }
    
    public func pinToTrailingEdgeOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Trailing,
                            toEdge: .Trailing,
                            constant: -constant))
        return constraints.last!
    }
    
    
    public func pinToTrailingMarginOfSuperview(view: UIView, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Trailing,
                            toEdge: .TrailingMargin,
                            constant: -constant))
        return constraints.last!
    }
    
    func pinView(view: UIView, edge: NSLayoutAttribute, toEdge: NSLayoutAttribute, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                                    attribute: edge,
                                    relatedBy: .Equal,
                                    toItem: view.superview,
                                    attribute: toEdge,
                                    multiplier: 1,
                                    constant: constant)
    }
}