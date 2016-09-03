//
//  AutoAdjustContentSizeScrollView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

/**
    Arranges subviews in linear fashion and provieds scrolling behaviour. This **must** not be 
    instantiated directly, use any one of its derived classes `AutoAdjustContentSizeHorizontalScrollView`
    or `AutoAdjustContentSizeVerticalScrollView`.
*/
public class AutoAdjustContentSizeScrollView : AutoLayoutView {
    
    var scrollView = UIScrollView.instanceWithAutoLayout()
    
    public var contentView : LinearLayoutView!
    
    public override func initializeView() {
        super.initializeView()
        super.addSubview(scrollView)
    }
    
    public override func addSubview(_ view: UIView) {
        contentView.addSubview(view)
        didAddSubview(view)
    }
    
    public override func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) {
        contentView.insertSubview(view, aboveSubview: siblingSubview)
        didAddSubview(view)
    }
    
    public override func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) {
        contentView.insertSubview(view, belowSubview: siblingSubview)
        didAddSubview(view)
    }
    
    public override func insertSubview(_ view: UIView, at index: Int) {
        contentView.insertSubview(view, at: index)
        didAddSubview(view)
    }
}
