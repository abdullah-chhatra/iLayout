//
//  VerticalLinearLayoutView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import UIKit

/**
    Arranges all the subviews in vertically one after another while making them expand to its width.
    If there are no height constraints present this view will expand vertically to accomodate all 
    of its subviews.

    Usage:

        let vl = VerticalLinearLayoutView()
        vl.addSubview(firstView)
        vl.addSubview(thirdView)
        vl.insertSubview(secondView, atIndex: 1)
        ...


*/
public class VerticalLinearLayoutView: LinearLayoutView {
    
    public override func placeFirstView(view: UIView) {
        layout.fillTopOfSuperview(view, respectMargin: respectsMargin)
    }
    
    public override func placeView(view: UIView, afterView: UIView) {
        layout.fillWidthOfSuperview(view, respectMargin: respectsMargin)
        layout.placeView(view, below: afterView, spacing: interviewSpacing)
    }
    
    public override func placeLastView(view: UIView) {
        layout.fillBottomOfSuperview(view, respectMargin: respectsMargin)
    }
}

