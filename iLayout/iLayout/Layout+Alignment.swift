//
//  Layout+Alignment.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/23/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import UIKit

/**
    This extension exposes methods to align views along different axis and ponts viz. align center, 
    horizontally or vertically align center, align
*/
public extension Layout {
    
    /**
        Aligns center of view with another view. 
    
        :param: view
                Center of this view will be aligned to another view.
    
        :param: withView
                Center of given view will be aligned to this view.
    
        :param: offsetX
                X offset for alignment. Default is zero.
    
        :param: offsetY
                Y offset for alignment. Default is zero.
    
        :returns:
                Returns created constraints.
    */
    public func alignCenterOfView(view: UIView, withView: UIView, offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> [NSLayoutConstraint]{
        
        return [verticallyAlignView(view, withView: withView, offset: offsetY),
                horizontallyAlignView(view, withView: withView, offset: offsetX)]
    }
    
    /**
        Aligns center of view with its superview.
    
        :param: view
            Center of this view will be aligned to its superview.
    
        :param: offsetX
                X offset for alignment. Default is zero.
    
        :param: offsetY
                Y offset for alignment. Default is zero.
    
        :returns:
            Returns created constraints.
    */
    public func alignCenterWithSuperview(view: UIView, offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> [NSLayoutConstraint] {
        
        return alignCenterOfView(view, withView: view.superview!, offsetX: offsetX, offsetY: offsetY)
    }
    
    /**
        Aligns center of all the views with their superview.
    
        :param: views
                Center of these views will be aligned to their superview.
    
        :param: offsetX
                X offset for alignment. Default is zero.
    
        :param: offsetY
                Y offset for alignment. Default is zero.
    
        :returns:
                Returns created constraints.
    */

    public func alignCenterWithSuperview(views: [UIView], offsetX: CGFloat = 0, offsetY: CGFloat = 0) -> [NSLayoutConstraint] {
        var cs = [NSLayoutConstraint]()
        for view in views {
            cs += alignCenterWithSuperview(view, offsetX: offsetX, offsetY: offsetY)
        }
        return cs
    }
    
    /**
        Vertically aligns a view's center to another view.
    
        :param: view
                Align this view's center vertically with another view.
    
        :param: withView
                Align the given view vertically with this view.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func verticallyAlignView(view: UIView, withView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint{
        
        constraints.append(alignView(view, withView: withView, attribute: .CenterY, offset: offset))
        return constraints.last!
    }
    
    /**
        Vertically aligns a view's center to its superview.
    
        :param: view
                Align this view's center vertically with its superview.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func verticallyAlignWithSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return verticallyAlignView(view, withView: view.superview!, offset: offset)
    }
    
    /**
        Vertically aligns center of all the views to their superview.
    
        :param: views
                Align center of these views vertically with their superview.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraints.
    */
    public func verticallyAlignWithSuperview(views: [UIView], offset: CGFloat = 0) -> [NSLayoutConstraint] {
        var cs = [NSLayoutConstraint]()
        for view in views {
            cs.append(verticallyAlignView(view, withView: view.superview!, offset: offset))
        }
        return cs
    }
    
    /**
        Horizontally aligns a view's center to another view.
    
        :param: view
                Align this view's center horizontally with another view.
    
        :param: withView
                Align the given view horizontally with this view.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func horizontallyAlignView(view: UIView, withView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        
        constraints.append(alignView(view, withView: withView, attribute: .CenterX, offset: offset))
        return constraints.last!
    }
    
    /**
        Horizontally aligns a view's center to its superview.
    
        :param: view
                Align this view's center horizontally with its superview.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func horizontallyAlignWithSuperview(view: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return horizontallyAlignView(view, withView: view.superview!, offset: offset)
    }
    
    /**
        Horizontally aligns center of all the views to their superview.
    
        :param: views
                Align center of these views horizontally with their superview.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraints.
    */
    public func horizontallyAlignWithSuperview(views: [UIView], offset: CGFloat = 0) -> [NSLayoutConstraint] {
        var cs = [NSLayoutConstraint]()
        for view in views {
            cs.append(horizontallyAlignView(view, withView: view.superview!, offset: offset))
        }
        return cs
    }
    
    /**
        Aligns top of view with another view.
    
        :param: view
                Align top of this view with another view
    
        :param: withView
                Align top of given view with this view.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func alignTopOfView(view: UIView, withView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(alignView(view, withView: withView, attribute: .Top, offset: offset))
        return constraints.last!
    }
    
    /**
        Aligns bottom of view with another view.
    
        :param: view
                Align bottom of this view with another view
    
        :param: withView
                Align bottom of given view with this view.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func alignBottomOfView(view: UIView, withView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(alignView(view, withView: withView, attribute: .Bottom, offset: offset))
        return constraints.last!
    }
    
    /**
        Aligns leading edge of view with another view.
    
        :param: view
                Align leading edge of this view with another view
    
        :param: withView
                Align leading edge of given view with this view.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func alignLeadingOfView(view: UIView, withView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(alignView(view, withView: withView, attribute: .Leading, offset: offset))
        return constraints.last!
    }
    
    /**
        Aligns trailing edge of view with another view.
    
        :param: view
                Align trailing edge of this view with another view
    
        :param: withView
                Align trailing edge of given view with this view.
    
        :param: offset
                Offset for alignment. Default is zero.
    
        :returns:
                Returns created contraint.
    */
    public func alignTrailingOfView(view: UIView, withView: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        constraints.append(alignView(view, withView: withView, attribute: .Trailing, offset: offset))
        return constraints.last!
    }
    
    private func alignView(view: UIView, withView: UIView, attribute: NSLayoutAttribute, offset: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
                                attribute: attribute,
                                relatedBy: .Equal,
                                toItem: withView,
                                attribute: attribute,
                                multiplier: 1,
                                constant: offset)
    }
}
