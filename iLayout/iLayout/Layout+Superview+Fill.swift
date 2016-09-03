//
//  Layout+PinSuperview.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

public extension Layout {
    
    /**
        Fills the width of sperview with view passed i.e. it creates constraints to pin the `view` to leading and
        trailing edges of superview.
        
        :param:     view
                    The subview that will fill the width of supeview.
    
        :param:     respectMargin
                    Should the view respects the margin set by superview i.e. should it be pined to edges or should it
                    leave space for margin at each edge.
    
        :returns:   Returns the newly created constraints as an array.
    */
    @discardableResult
    public func fillWidthOfSuperview(_ view: UIView, respectMargin: Bool = true) -> [NSLayoutConstraint] {
        return respectMargin ?
            [pinToLeadingMarginOfSuperview(view), pinToTrailingMarginOfSuperview(view)] :
            [pinToLeadingEdgeOfSuperview(view), pinToTrailingEdgeOfSuperview(view)]
    }
    
    /**
        Fills the height of sperview with view passed i.e. it creates constraints to pin the `view` to top and
        bottom edges of superview.
    
        :param:     view
                    The subview that will fill the height of supeview.
    
        :param:     respectMargin
                    Should the view respects the margin set by superview i.e. should it be pined to edges or should it
                    leave space for margin at each edge.
    
        :returns:   Returns the newly created constraints as an array.
    */
    @discardableResult
    public func fillHeightOfSuperview(_ view: UIView, respectMargin: Bool = true) -> [NSLayoutConstraint] {
        
        return respectMargin ?
            [pinToTopMarginOfSuperview(view), pinToBottomMarginOfSuperview(view)] :
            [pinToTopEdgeOfSuperview(view), pinToBottomEdgeOfSuperview(view)]
    }
    
    /**
        Fills the top of view wit view passed i.e. it creates constraints to pin the `view` to top, leading and trailing
        edges of superview
    
        :param:     view
                    The subview that will fill the top of supeview.
    
        :param:     respectMargin
                    Should the view respects the margin set by superview i.e. should it be pined to edges or should it
                    leave space for margin at each edge.
    
        :returns:   Returns the newly created constraints as an array.
    */
    @discardableResult
    public func fillTopOfSuperview(_ view: UIView, respectMargin: Bool = true) -> [NSLayoutConstraint] {
        if respectMargin {
            return [pinToLeadingMarginOfSuperview(view),
                pinToTopMarginOfSuperview(view),
                pinToTrailingMarginOfSuperview(view)]
        } else {
            return [pinToLeadingEdgeOfSuperview(view),
                pinToTopEdgeOfSuperview(view),
                pinToTrailingEdgeOfSuperview(view)]
        }
    }
    
    /**
        Fills the bottom of superview with view passed i.e. it creates constraints to pin the `view` to bottom, 
        leading and trailing edges of superview
    
        :param:     view
                    The subview that will fill the top of supeview.
    
        :param:     respectMargin
                    Should the view respects the margin set by superview i.e. should it be pined to edges or should it
                    leave space for margin at each edge.
    
        :returns:   Returns the newly created constraints as an array.
    */
    @discardableResult
    public func fillBottomOfSuperview(_ view: UIView, respectMargin: Bool = true) -> [NSLayoutConstraint] {
        if respectMargin {
            return [pinToLeadingMarginOfSuperview(view),
                pinToBottomMarginOfSuperview(view),
                pinToTrailingMarginOfSuperview(view)]
        } else {
            return [pinToLeadingEdgeOfSuperview(view),
                pinToBottomEdgeOfSuperview(view),
                pinToTrailingEdgeOfSuperview(view)]
        }
    }
    
    /**
        Fills the leading side of superview with view passed i.e. it creates constraints to pin the `view` to top, 
        leading and bottom edges of superview
    
        :param:     view
                    The subview that will fill the leading side of supeview.
    
        :param:     respectMargin
                    Should the view respects the margin set by superview i.e. should it be pined to edges or should it
                    leave space for margin at each edge.
    
        :returns:   Returns the newly created constraints as an array.
    */
    @discardableResult
    public func fillLeadingSideOfSuperview(_ view: UIView, respectMargin: Bool = true) -> [NSLayoutConstraint] {
        if respectMargin {
            return [pinToTopMarginOfSuperview(view),
                pinToLeadingMarginOfSuperview(view),
                pinToBottomMarginOfSuperview(view)]
        } else {
            return [pinToTopEdgeOfSuperview(view),
                pinToLeadingEdgeOfSuperview(view),
                pinToBottomEdgeOfSuperview(view)]
        }
    }
    
    /**
        Fills the leading side of superview with view passed i.e. it creates constraints to pin the `view` to top,
        trailing and bottom edges of superview
    
        :param:     view
                    The subview that will fill the traling side of supeview.
    
        :param:     respectMargin
                    Should the view respects the margin set by superview i.e. should it be pined to edges or should it
                    leave space for margin at each edge.
    
        :returns:   Returns the newly created constraints as an array.
    */
    @discardableResult
    public func fillTrailingSideOfSuperview(_ view: UIView, respectMargin: Bool = true) -> [NSLayoutConstraint] {
        if respectMargin {
            return [pinToTopMarginOfSuperview(view),
                pinToTrailingMarginOfSuperview(view),
                pinToBottomMarginOfSuperview(view)]
        } else {
            return [pinToTopEdgeOfSuperview(view),
                pinToTrailingEdgeOfSuperview(view),
                pinToBottomEdgeOfSuperview(view)]
        }
    }
    
    /**
        Fills the superview with view passed i.e. it creates constraints to pin the view to all four edges of superview.
    
        :param:     view
                    The subview that will fill the supeview.
    
        :param:     respectMargin
                    Should the view respects the margin set by superview i.e. should it be pined to edges or should it
                    leave space for margin at each edge.
    
        :returns:   Returns the newly created constraints as an array.
    */
    @discardableResult
    public func fillSuperview(_ view: UIView, respectMargin: Bool = true) -> [NSLayoutConstraint] {
        if respectMargin {
            return [pinToTopMarginOfSuperview(view),
                    pinToBottomMarginOfSuperview(view),
                    pinToLeadingMarginOfSuperview(view),
                    pinToTrailingMarginOfSuperview(view)]
        } else {
            return [pinToTopEdgeOfSuperview(view),
                    pinToBottomEdgeOfSuperview(view),
                    pinToLeadingEdgeOfSuperview(view),
                    pinToTrailingEdgeOfSuperview(view)]
        }
    }
}
