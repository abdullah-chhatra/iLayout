//
//  LayoutViewController.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 6/7/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import UIKit
import iLayout

class LayoutViewController: UIViewController {

    @IBOutlet var containerView : UIView!
    
    var layoutProvider: LayoutProvider!
    
    private var layoutView: UIView!
    private var constraintsUpdated = false
    private var subviews = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutView = layoutProvider.createLayoutView()
        containerView.addSubview(layoutView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addSuview() {
        let v = UILabel.createWithText(text: "V \(subviews.count + 1)")
        subviews.append(v)
        layoutView.addSubview(v)
    }
    
    @IBAction func removeSuview() {
        if subviews.count > 0 {
            subviews[subviews.count - 1].removeFromSuperview()
            subviews.removeLast()
        }
    }
    
    override func updateViewConstraints() {
        if !constraintsUpdated {
            let layout = Layout(rootView: containerView, viewMap: ["container": containerView, "layout": layoutView])
            layoutProvider.addConstraints(layout: layout)
            
            layout.installConstraints()
            constraintsUpdated = true
        }
        super.updateViewConstraints()
    }
    
    func createLayoutView() -> UIView {
        fatalError()
    }
    
    func addConstraints(layout: Layout) {}
    
}

protocol LayoutProvider {
    
    func createLayoutView() -> UIView
    
    func addConstraints(layout: Layout)
}

class HorizontalLayoutProvider: LayoutProvider {
    
    func createLayoutView() -> UIView {
        return HorizontalLinearLayoutView.instanceWithAutoLayout()
    }
    
    func addConstraints(layout: Layout) {
        layout.createWithVisualFormat("V:|[layout]|")
    }
}

class VerticalLayoutProvider: LayoutProvider {
    
    func createLayoutView() -> UIView {
        return VerticalLinearLayoutView.instanceWithAutoLayout()
    }
    
    func addConstraints(layout: Layout) {
        layout.createWithVisualFormat("H:|[layout]|")
    }
}

class AutoScrollHorizontalLayoutProvider: LayoutProvider {
    
    func createLayoutView() -> UIView {
        return AutoAdjustContentSizeHorizontalScrollView.instanceWithAutoLayout()
    }
    
    func addConstraints(layout: Layout) {
        layout.createWithVisualFormat("H:|[layout]|")
        layout.createWithVisualFormat("V:|[layout]|")
    }
}

class AutoScrollVerticalLayoutProvider: LayoutProvider {
    
    func createLayoutView() -> UIView {
        return AutoAdjustContentSizeVerticalScrollView.instanceWithAutoLayout()
    }
    
    func addConstraints(layout: Layout) {
        layout.createWithVisualFormat("H:|[layout]|")
        layout.createWithVisualFormat("V:|[layout]|")
    }
}

