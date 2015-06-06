//
//  PinSuperviewViewController.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import UIKit
import iLayout

class PinSuverviewView : AutoLayoutView {
    
    var topLabel = UILabel.instanceWithAutoLayout()
    var bottomLabel = UILabel.instanceWithAutoLayout()
    var leadingLabel = UILabel.instanceWithAutoLayout()
    var trailingLabel = UILabel.instanceWithAutoLayout()
    
    override func initializeView() {
        super.initializeView()
        
        backgroundColor = UIColor.whiteColor()
        
        topLabel.text = "Top Label - 5 pixel off edge"
        topLabel.backgroundColor = UIColor.yellowColor()
        addSubview(topLabel)
        
        bottomLabel.text = "Bottom Label Pin to margin"
        bottomLabel.backgroundColor = UIColor.redColor()
        addSubview(bottomLabel)
        
        leadingLabel.text = "Leading Label to edge"
        leadingLabel.backgroundColor = UIColor.greenColor()
        addSubview(leadingLabel)
        
        trailingLabel.text = "Traling Label to margin"
        trailingLabel.backgroundColor = UIColor.grayColor()
        addSubview(trailingLabel)
        
        println(layoutMargins)
    }
    
    override func addConstraints(layout: Layout) {
        
        layout.pinToTopMarginOfSuperview(topLabel, constant: 10)
        layout.horizontallyAlignView(topLabel, withView: self)
        
        layout.pinToBottomMarginOfSuperview(bottomLabel)
        layout.horizontallyAlignView(bottomLabel, withView: self)
        
        layout.pinToLeadingEdgeOfSuperview(leadingLabel)
        layout.verticallyAlignView(leadingLabel, withView: self)
        
        layout.pinToTrailingMarginOfSuperview(trailingLabel)
        layout.verticallyAlignView(trailingLabel, withView: self)
    }
}

class PinSuperviewViewController: UIViewController {

    override func loadView() {
        view = PinSuverviewView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.translucent = false
        
    }
}
