//
//  PinSuperviewView.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 6/6/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import UIKit
import iLayout

class PinSuverviewView : AutoLayoutView {
    
    var topLabel = UILabel.createWithText("Top Label - 5 pixel off edge")
    var bottomLabel = UILabel.createWithText("Bottom Label Pin to margin")
    var leadingLabel = UILabel.createWithText("Leading Label pin to edge")
    var trailingLabel = UILabel.createWithText("Traling Label pin to margin")
    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.whiteColor()

        addSubview(topLabel)
        addSubview(bottomLabel)
        addSubview(leadingLabel)
        addSubview(trailingLabel)
    }
    
    override func addConstraints(layout: Layout) {
        
        layout.pinToTopMarginOfSuperview(topLabel, offset: 10)
        layout.horizontallyAlignView(topLabel, withView: self)
        
        layout.pinToBottomMarginOfSuperview(bottomLabel)
        layout.horizontallyAlignView(bottomLabel, withView: self)
        
        layout.pinToLeadingEdgeOfSuperview(leadingLabel)
        layout.verticallyAlignView(leadingLabel, withView: self)
        
        layout.pinToTrailingMarginOfSuperview(trailingLabel)
        layout.verticallyAlignView(trailingLabel, withView: self)
    }
}