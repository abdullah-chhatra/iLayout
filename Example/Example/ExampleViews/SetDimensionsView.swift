//
//  SetDimensionsView.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 6/6/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import iLayout

extension UILabel {
    
    class func create() -> UILabel {
        var v = instanceWithAutoLayout()
        v.layer.borderColor = UIColor.blackColor().CGColor
        v.layer.borderWidth = 0.5
        v.textAlignment = .Center
        v.font = v.font.fontWithSize(11)
        return v
    }
    
    class func createWithText(text: String) -> UILabel {
        var v = create()
        v.text = text
        return v
    }
}

class SetDimensionsView : AutoLayoutView {
    
    var setWidth = UILabel.createWithText("Width equal to 250px")
    var setHeight = UILabel.createWithText("Height equal to 50px")
    var setSize1 = UILabel.createWithText("Size equal to 200px X 50px")
    var setSize2 = UILabel.createWithText("Size equal to 150px X 70px")

    var setWidthLE = UILabel.createWithText("Width less or equal to 150px")
    var setWidthGE = UILabel.createWithText("Width greater or equal to 150px (as this label expands)")
    var setHeightLE = UILabel.createWithText("Height less or equal to 50px")
    var setHeightGE = UILabel.createWithText("Height greater or equal to 50px")

    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.whiteColor()
        
        addSubview(setWidth)
        addSubview(setHeight)
        addSubview(setSize1)
        addSubview(setSize2)
        addSubview(setHeightLE)
        addSubview(setHeightGE)
        addSubview(setWidthLE)
        addSubview(setWidthGE)
    }
    
    override func addConstraints(layout: Layout) {
        layout.pinToTopMarginOfSuperview(setWidth, offset: 20)
        layout.horizontallyAlignView(setWidth, withView: self)
        layout.setForView(setWidth, width: 250)
        
        layout.placeView(setHeight, below: setWidth, spacing: 5)
        layout.horizontallyAlignView(setHeight, withView: self)
        layout.setForView(setHeight, height: 50)
        
        layout.placeView(setSize1, below: setHeight, spacing: 5)
        layout.horizontallyAlignView(setSize1, withView: self)
        layout.setForView(setSize1, size: CGSizeMake(200, 50))
        
        layout.placeView(setSize2, below: setSize1, spacing: 5)
        layout.horizontallyAlignView(setSize2, withView: self)
        layout.setForView(setSize2, width: 150, height: 70)
        
        layout.placeView(setWidthLE, below: setSize2, spacing: 5)
        layout.horizontallyAlignView(setWidthLE, withView: self)
        layout.setForView(setWidthLE, widthLessOrEqual: 150)
        
        layout.placeView(setWidthGE, below: setWidthLE, spacing: 5)
        layout.horizontallyAlignView(setWidthGE, withView: self)
        layout.setForView(setWidthGE, widthGreaterOrEqual: 150)
        
        layout.placeView(setHeightLE, below: setWidthGE, spacing: 5)
        layout.horizontallyAlignView(setHeightLE, withView: self)
        layout.setForView(setHeightLE, heightLessOrEqual: 50)
        
        layout.placeView(setHeightGE, below: setHeightLE, spacing: 5)
        layout.horizontallyAlignView(setHeightGE, withView: self)
        layout.setForView(setHeightGE, heightGreaterOrEqual: 50)
    }
}
