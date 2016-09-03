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
    
    var fillTopView = UILabel.createWithText(text: "Fill top")
    var fillBottomView = UILabel.createWithText(text: "Fill bottom")
    var fillLeftView = UILabel.createWithText(text: "Fill left")
    var fillRightView = UILabel.createWithText(text: "Fill right")
    var fillCenter = UILabel.createWithText(text: "Fill center")
    
    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.white
        
        addSubview(fillTopView)
        addSubview(fillBottomView)
        addSubview(fillLeftView)
        addSubview(fillRightView)
        addSubview(fillCenter)
        
        fillTopView.backgroundColor = UIColor.yellow
        fillBottomView.backgroundColor = UIColor.yellow
        fillRightView.backgroundColor = UIColor.green
        fillLeftView.backgroundColor = UIColor.green
        
        fillCenter.backgroundColor = UIColor.lightGray
        
        for view in subviews {
            view.alpha = 0.5
        }
    }
    
    override func addConstraints(_ layout: Layout) {
        layout.fillTopOfSuperview(fillTopView, respectMargin: false)
        layout.fillBottomOfSuperview(fillBottomView, respectMargin: false)
        
        layout.fillLeadingSideOfSuperview(fillLeftView)
        layout.fillTrailingSideOfSuperview(fillRightView)
        
        layout.fillSuperview(fillCenter, respectMargin: false)
    }
}
