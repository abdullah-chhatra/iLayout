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
    
    var layoutView: UIView!
    
    var constraintsUpdated = false
    var subviews = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutView.backgroundColor = UIColor.lightGrayColor()
        containerView.addSubview(layoutView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addSuview() {
        let v = UILabel.createWithText("V \(subviews.count + 1)")
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
            let layout = Layout(rootView: containerView)
            layout.fillSuperview(layoutView, respectMargin: false)
            layout.installConstraints()
            constraintsUpdated = true
        }
        super.updateViewConstraints()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
