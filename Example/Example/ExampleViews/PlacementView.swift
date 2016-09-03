//
//  PlacementView.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 6/7/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import iLayout

class PlacementView : AutoLayoutView {
    
    var centerView = UILabel.createWithText(text: "Cener view")
    
    var topView = UILabel.createWithText(text: "Top view")
    var bottomView  = UILabel.createWithText(text: "Bottom view")
    var leftView = UILabel.createWithText(text: "Left view")
    var rightView  = UILabel.createWithText(text: "Right view")
    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.white
        
        addSubview(centerView)
        addSubview(topView)
        addSubview(bottomView)
        addSubview(leftView)
        addSubview(rightView)
    }
    
    override func addConstraints(_ layout: Layout) {
        layout.alignCenterWithSuperview(centerView)
        layout.setForView(centerView, width: 150, height: 150)
        
        layout.placeView(topView, above: centerView, spacing: 5)
        layout.placeView(bottomView, below: centerView, spacing: 5)
        layout.placeView(leftView, leftOf: centerView, spacing: 5)
        layout.placeView(rightView, rightOf: centerView, spacing: 5)
        
        layout.horizontallyAlignView(topView, withView: centerView)
        layout.horizontallyAlignView(bottomView, withView: centerView)
        layout.verticallyAlignView(leftView, withView: centerView)
        layout.verticallyAlignView(rightView, withView: centerView)
    }
}
