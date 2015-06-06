//
//  UIView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation
import UIKit

/**
    Some usefull extenstions of UIView
*/
public extension UIView {
  
    /**
        Creates any subclass of UIView with no argument initializer and sets autoresizing mask to constraints to false.
    */
    public class func instanceWithAutoLayout() -> Self {
        var view = self()
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        return view
    }
    
    /**
        Forces view layout.
    */
    public func updateLayout() {
        setNeedsUpdateConstraints()
        updateConstraintsIfNeeded()
        layoutIfNeeded()
    }
    
    /**
        Forces view layout with animation.
    
        :param: duration
                Duration of animation.
    */
    public func updateLayoutWithAnimation(duration: NSTimeInterval) {
        setNeedsUpdateConstraints()
        updateConstraintsIfNeeded()
        
        UIView.animateWithDuration(duration, animations: { () -> Void in
            self.layoutIfNeeded()
        })
    }
}