//
//  LinearLayoutView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation
import UIKit

public class LinearLayoutView: BaseAutoLayoutView {

    public var layout: Layout!
    
    public var interviewSpacing = CGFloat(5)
    public var respectsMargin = true
    
    var subviewListModified = false
    
    public override func initializeView() {
        super.initializeView()
        layout = Layout(rootView: self)
    }
    
    public override func didAddSubview(subview: UIView) {
        super.didAddSubview(subview)
        
        subviewListModified = true
        setNeedsUpdateConstraints()
    }
    
    public override func willRemoveSubview(subview: UIView) {
        super.willRemoveSubview(subview)
        
        subviewListModified = true
        setNeedsUpdateConstraints()
    }

    public override func updateConstraints() {
        if subviewListModified {
            layout.clearConstraints()
            
            var previous : UIView!
            for (index, subview) in enumerate(subviews as! [UIView]){
                if index == 0 {
                    placeFirstView(subview)
                } else {
                    placeView(subview, afterView: previous)
                }
                previous = subview
            }
            if previous != nil {
                placeLastView(previous)
            }
            layout.installConstraints()
            subviewListModified = false
        }
        
        super.updateConstraints()
    }
    
    public func placeFirstView(view: UIView) {}
    
    public func placeView(view: UIView, afterView: UIView) {}
    
    public func placeLastView(view: UIView) {}
}
