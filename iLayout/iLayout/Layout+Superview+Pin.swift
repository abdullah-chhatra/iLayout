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
    @discardableResult
    public func pinToTopEdgeOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .top,
                            toEdge: .top,
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
    @discardableResult
    public func pinToTopMarginOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .top,
                            toEdge: .topMargin,
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
    @discardableResult
    public func pinToBottomEdgeOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .bottom,
                            toEdge: .bottom,
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
    @discardableResult
    public func pinToBottomMarginOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .bottom,
                            toEdge: .bottomMargin,
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
    @discardableResult
    public func pinToLeadingEdgeOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .leading,
                            toEdge: .leading,
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
    @discardableResult
    public func pinToLeadingMarginOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .leading,
                            toEdge: .leadingMargin,
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
    @discardableResult
    public func pinToTrailingEdgeOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .trailing,
                            toEdge: .trailing,
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
    @discardableResult
    public func pinToTrailingMarginOfSuperview(_ view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(pinView(view,
                            edge: .trailing,
                            toEdge: .trailingMargin,
                            constant: -offset))
        return constraints.last!
    }
    
    private func pinView(_ view: UIView, edge: NSLayoutAttribute, toEdge: NSLayoutAttribute, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                                    attribute: edge,
                                    relatedBy: .equal,
                                    toItem: view.superview,
                                    attribute: toEdge,
                                    multiplier: 1,
                                    constant: constant)
    }
}
