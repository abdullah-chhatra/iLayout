//
//  Layout+Superview.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 1/17/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

public extension Layout {
    
    /**
        Pins the top edge of give view to that of its parent.
    
        :param: view
                View to pin top edge to that of its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToTopEdgeOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Top,
                            toEdge: .Top,
                            constant: offset))
        return constraints.last!
    }
    
    /**
        Pins the top edge of give view to top margin of its parent.
    
        :param: view
                View to pin top edge to top margin its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToTopMarginOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Top,
                            toEdge: .TopMargin,
                            constant: offset))
        return constraints.last!
    }
    
    /**
        Pins the bottom edge of give view to that of its parent.
    
        :param: view
                View to pin bottom edge to that of its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToBottomEdgeOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Bottom,
                            toEdge: .Bottom,
                            constant: -offset))
        return constraints.last!
    }

    /**
        Pins the bottom edge of give view to bottom margin of its parent.
    
        :param: view
                View to pin bottom edge to bottom margin its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToBottomMarginOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Bottom,
                            toEdge: .BottomMargin,
                            constant: -offset))
        return constraints.last!
    }

    /**
        Pins the leading edge of give view to that of its parent.
    
        :param: view
                View to pin leading edge to that of its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToLeadingEdgeOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Leading,
                            toEdge: .Leading,
                            constant: offset))
        return constraints.last!
    }
    
    /**
        Pins the leading edge of give view to leading margin of its parent.
    
        :param: view
                View to pin leading edge to leading margin its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToLeadingMarginOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Leading,
                            toEdge: .LeadingMargin,
                            constant: offset))
        return constraints.last!
    }
    
    /**
        Pins the trailing edge of give view to that of its parent.
    
        :param: view
                View to pin trailing edge to that of its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToTrailingEdgeOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Trailing,
                            toEdge: .Trailing,
                            constant: -offset))
        return constraints.last!
    }
    
    /**
        Pins the trailing edge of give view to trailing margin of its parent.
    
        :param: view
                View to pin trailing edge to trailing margin its parent.
    
        :param: offset
                Offset by which to pin edge. Default if zero.
    
        :returns:
                Returns created constriant.
    */
    public func pinToTrailingMarginOfSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .Trailing,
                            toEdge: .TrailingMargin,
                            constant: -offset))
        return constraints.last!
    }
    
    private func pinView(view: UIView, edge: NSLayoutAttribute, toEdge: NSLayoutAttribute, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                                    attribute: edge,
                                    relatedBy: .Equal,
                                    toItem: view.superview,
                                    attribute: toEdge,
                                    multiplier: 1,
                                    constant: constant)
    }
}