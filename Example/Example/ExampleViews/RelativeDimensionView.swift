//
//  RelativeDimensionView.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 6/7/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import iLayout

class RelativeDimensionView : AutoLayoutView {
    
    var label1 = UILabel.createWithText("Label 1  250px X 50px")
    
    var sameWidth = UILabel.createWithText("Same width")
    var sameHeight = UILabel.createWithText("Same height")
    var sameSize = UILabel.createWithText("Same size")
    
    var halfWidth = UILabel.createWithText("Half width")
    var halfHeight = UILabel.createWithText("Half height")
    
    var doubleWidth = UILabel.createWithText("Double width")
    var doubleHeight = UILabel.createWithText("Double height")
    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.whiteColor()
        
        addSubview(label1)
        addSubview(sameWidth)
        addSubview(sameHeight)
        addSubview(sameSize)
        addSubview(halfWidth)
        addSubview(halfHeight)
        addSubview(doubleWidth)
        addSubview(doubleHeight)
    }
    
    override func addConstraints(layout: Layout) {
        layout.horizontallyAlignWithSuperview(subviews as! [UIView])
        
        layout.pinToTopMarginOfSuperview(label1, offset: 10)
        
        layout.placeView(sameWidth, below: label1, spacing: 5)
        layout.placeView(sameHeight, below: sameWidth, spacing: 5)
        layout.placeView(sameSize, below: sameHeight, spacing: 5)
        layout.placeView(halfWidth, below: sameSize, spacing: 5)
        layout.placeView(halfHeight, below: halfWidth, spacing: 5)
        layout.placeView(doubleWidth, below: halfHeight, spacing: 5)
        layout.placeView(doubleHeight, below: doubleWidth, spacing: 5)
     
        
        layout.setForView(label1, width: 250, height: 50)
        layout.makeWidthOfView(sameWidth, equalTo: label1)
        
        layout.makeHeightOfView(sameHeight, equalTo: label1)
        
        layout.makeSizeOfView(sameSize, equalTo: label1)
        
        layout.makeWidthOfView(halfWidth, relativeTo: label1, multiplier: 0.5)
        
        layout.makeHeightOfView(halfHeight, relativeTo: label1, multiplier: 0.5)
        
        layout.makeWidthOfView(doubleWidth, relativeTo: label1, multiplier: 2)
        
        layout.makeHeightOfView(doubleHeight, relativeTo: label1, multiplier: 2)
        
    }
}