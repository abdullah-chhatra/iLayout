//
//  AutoAdjustContentSizeVerticalScrollView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

/**
    Adds scroll view on top of `VerticalLinearLayout`. This will allow to grow underlying 
    vertical linear layout to grow indefinitly to accomodate its subviews and provide
    scrolling to access subviews.

    Usage:

        let vl = AutoAdjustContentSizeVerticalScrollView()
        vl.addSubview(firstView)
        vl.addSubview(thirdView)
        vl.insertSubview(secondView, atIndex: 1)
        ...

*/
public class AutoAdjustContentSizeVerticalScrollView: AutoAdjustContentSizeScrollView {
    
    public override func initializeView() {
        super.initializeView()
        
        contentView = VerticalLinearLayoutView.instanceWithAutoLayout()
        contentView.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
        scrollView.addSubview(contentView)
    }
    
    public override func addConstraints(_ layout: Layout) {
        layout.fillSuperview(scrollView, respectMargin: false)
        layout.fillSuperview(contentView, respectMargin: false)
        layout.makeWidthOfView(contentView, equalTo: self)
    }    
}
