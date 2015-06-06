//
//  AutoAdjustContentSizeScrollView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

public class AutoAdjustContentSizeScrollView : AutoLayoutView {
    
    var scrollView = UIScrollView.instanceWithAutoLayout()
    
    public var contentView : LinearLayoutView!
    
    public override func initializeView() {
        super.initializeView()
        super.addSubview(scrollView)
    }
    
    public override func addSubview(view: UIView) {
        contentView.addSubview(view)
        didAddSubview(view)
    }
    
    public override func insertSubview(view: UIView, aboveSubview siblingSubview: UIView) {
        contentView.insertSubview(view, aboveSubview: siblingSubview)
        didAddSubview(view)
    }
    
    public override func insertSubview(view: UIView, belowSubview siblingSubview: UIView) {
        contentView.insertSubview(view, belowSubview: siblingSubview)
        didAddSubview(view)
    }
    
    public override func insertSubview(view: UIView, atIndex index: Int) {
        contentView.insertSubview(view, atIndex: index)
        didAddSubview(view)
    }
}
