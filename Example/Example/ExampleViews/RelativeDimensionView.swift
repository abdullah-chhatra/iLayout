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
    
    var label1 = UILabel.createWithText(text: "Label 1  250px X 50px")
    
    var sameWidth = UILabel.createWithText(text: "Same width")
    var sameHeight = UILabel.createWithText(text: "Same height")
    var sameSize = UILabel.createWithText(text: "Same size")
    
    var halfWidth = UILabel.createWithText(text: "Half width")
    var halfHeight = UILabel.createWithText(text: "Half height")
    
    var doubleWidth = UILabel.createWithText(text: "Double width")
    var doubleHeight = UILabel.createWithText(text: "Double height")
    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.white
        
        addSubview(label1)
        addSubview(sameWidth)
        addSubview(sameHeight)
        addSubview(sameSize)
        addSubview(halfWidth)
        addSubview(halfHeight)
        addSubview(doubleWidth)
        addSubview(doubleHeight)
    }
    
    override func addConstraints(_ layout: Layout) {
        layout.horizontallyAlignWithSuperview(subviews)
        
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
