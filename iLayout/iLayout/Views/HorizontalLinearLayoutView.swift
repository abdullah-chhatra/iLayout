//
//  HorizontalLinearLayoutView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import UIKit

/**
    Arranges all the subviews in horizontally one after another while making them expand to its height.

    Usage:

        let vl = VerticalLinearLayoutView()
        vl.addSubview(firstView)
        vl.addSubview(thirdView)
        vl.insertSubview(secondView, atIndex: 1)
        ...

*/

public class HorizontalLinearLayoutView : LinearLayoutView {
    
    public override func placeFirstView(view: UIView) {
        layout.fillLeadingSideOfSuperview(view, respectMargin: respectsMargin)
    }
    
    public override func placeView(view: UIView, afterView: UIView) {
        layout.placeView(view, rightOf: afterView, spacing: interviewSpacing)
        layout.fillWidthOfSuperview(view, respectMargin: respectsMargin)
    }
    
    public override func placeLastView(view: UIView) {
        layout.fillTrailingSideOfSuperview(view, respectMargin: respectsMargin)
    }
}
