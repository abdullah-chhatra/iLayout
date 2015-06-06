//
//  Layout+Sibling+Dimension.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/23/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import UIKit

public extension Layout {
    
    public func makeWidthOfView(view: UIView, equalTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: equalTo,
            attribute: .Width, 
            relatedBy: .Equal,
            constant: offset)
    }
    
    public func makeHeightOfView(view: UIView, equalTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: equalTo,
            attribute: .Height, 
            relatedBy: .Equal,
            constant: offset)
    }
    
    public func makeSizeOfView(view: UIView, equalTo: UIView, offsetWidth: CGFloat = 0, offsetHeight: CGFloat = 0) -> [NSLayoutConstraint] {
        return
            [makeHeightOfView(view, equalTo: equalTo, offset: offsetHeight),
            makeWidthOfView(view, equalTo: equalTo, offset: offsetWidth)]
    }

    public func makeWidthOfView(view: UIView, greaterOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view, 
            toView: greaterOrEqualTo,
            attribute: .Width, 
            relatedBy: .GreaterThanOrEqual, 
            constant: offset)
    }
    
    public func makeHeightOfView(view: UIView, greaterOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: greaterOrEqualTo, 
            attribute: .Height, 
            relatedBy: .GreaterThanOrEqual, 
            constant: offset)
    }
    
    public func makeWidthOfView(view: UIView, lessOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: lessOrEqualTo,
            attribute: .Width, 
            relatedBy: .LessThanOrEqual,
            constant: offset)
    }
    
    public func makeHeightOfView(view: UIView, lessOrEqualTo: UIView, offset: CGFloat = 0) -> NSLayoutConstraint {
        return makeView(view,
            toView: lessOrEqualTo,
            attribute: .Height,
            relatedBy: .LessThanOrEqual,
            constant: offset)
    }

    
    private func makeView(view: UIView, toView: UIView, attribute: NSLayoutAttribute, relatedBy: NSLayoutRelation, constant: CGFloat) -> NSLayoutConstraint {
        
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
