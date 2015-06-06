//
//  AutoAdjustContentSizeHorizontalScrollView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

public class AutoAdjustContentSizeHorizontalScrollView : AutoAdjustContentSizeScrollView {
    
    public override func initializeView() {
        super.initializeView()
        
        contentView = HorizontalLinearLayoutView.instanceWithAutoLayout()
        contentView.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
        scrollView.addSubview(contentView)
    }

    public override func addConstraints(layout: Layout) {
        layout.fillSuperview(scrollView, respectMargin: false)
        layout.fillSuperview(contentView, respectMargin: false)
        layout.makeHeightOfView(contentView, equalTo: self)
    }    
}
