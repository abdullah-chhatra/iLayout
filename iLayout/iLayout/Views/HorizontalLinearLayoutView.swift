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
*/
class HorizontalLinearLayoutView : LinearLayoutView {
    
    override func placeFirstView(view: UIView) {
        layout.fillLeadingSideOfSuperview(view, respectMargin: respectsMargin)
    }
    
    override func placeView(view: UIView, afterView: UIView) {
        layout.placeView(view, rightOf: afterView, spacing: interviewSpacing)
        layout.fillWidthOfSuperview(view, respectMargin: respectsMargin)
    }
    
    override func placeLastView(view: UIView) {
        layout.fillTrailingSideOfSuperview(view, respectMargin: respectsMargin)
    }
}
