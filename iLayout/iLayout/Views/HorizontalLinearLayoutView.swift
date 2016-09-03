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
    If there are no width constraints present this view will expand horizontally to accomodate all
    of its subviews.

    Usage:

        let vl = HorizontalLinearLayoutView()
        vl.addSubview(firstView)
        vl.addSubview(thirdView)
        vl.insertSubview(secondView, atIndex: 1)
        ...

*/

public class HorizontalLinearLayoutView : LinearLayoutView {
    
    public override func placeFirstView(_ view: UIView) {
        layout.fillLeadingSideOfSuperview(view, respectMargin: respectsMargin)
    }
    
    public override func placeView(_ view: UIView, afterView: UIView) {
        layout.placeView(view, rightOf: afterView, spacing: interviewSpacing)
        layout.fillHeightOfSuperview(view, respectMargin: respectsMargin)
    }
    
    public override func placeLastView(_ view: UIView) {
        layout.fillTrailingSideOfSuperview(view, respectMargin: respectsMargin)
    }
}
