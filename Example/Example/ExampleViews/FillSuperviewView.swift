//
//  FillSuperviewView.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 6/7/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import iLayout

class FillSuperviewView : AutoLayoutView {
    
    var fillTopView = UILabel.createWithText("Fill top")
    var fillBottomView = UILabel.createWithText("Fill bottom")
    var fillLeftView = UILabel.createWithText("Fill left")
    var fillRightView = UILabel.createWithText("Fill right")
    var fillCenter = UILabel.createWithText("Fill center")
    
    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.whiteColor()
        
        addSubview(fillTopView)
        addSubview(fillBottomView)
        addSubview(fillLeftView)
        addSubview(fillRightView)
        addSubview(fillCenter)
        
        fillTopView.backgroundColor = UIColor.yellowColor()
        fillBottomView.backgroundColor = UIColor.yellowColor()
        
        fillRightView.backgroundColor = UIColor.greenColor()
        fillLeftView.backgroundColor = UIColor.greenColor()
        
        fillCenter.backgroundColor = UIColor.lightGrayColor()
        
        for view in subviews as! [UIView] {
            view.alpha = 0.5
        }
    }
    
    override func addConstraints(layout: Layout) {
        layout.fillTopOfSuperview(fillTopView, respectMargin: false)
        layout.fillBottomOfSuperview(fillBottomView, respectMargin: false)
        
        layout.fillLeadingSideOfSuperview(fillLeftView)
        layout.fillTrailingSideOfSuperview(fillRightView)
        
        layout.fillSuperview(fillCenter, respectMargin: false)
    }
}