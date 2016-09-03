//
//  Layout.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 12/20/14.
//  Copyright (c) 2014 Abdullah. All rights reserved.
//

import UIKit

/**
    Main class to create and manage constraints for one single view hierarchy. Usage:

        let layout = Layout(rootView: view)
        layout.setForView(subview, height: 150)
        ... 
        //Some more constraints
        ...
        layout.installConstraints()

 */
public class Layout {
    
    weak var rootView: UIView!
    
    var constraints = [NSLayoutConstraint]()
    var viewMap: [String: AnyObject]?
    
    /**
        Designated initializer to create new instance.
    
        :param: rootView    
                The top most view in the view hierarchy for which the layout constraints are to be made.
    */
    public init(rootView: UIView) {
        self.rootView       = rootView
    }
    
    /**
        Designated initializer to create new instance that could be used to add constraints with visual format language.
    
        :param: rootView
                The top most view in the view hierarchy for which the layout constraints are to be made.
    
        :param: viewMap
                Map of views that will be used to create constraints with visual format language.
    */
    public init(rootView: UIView, viewMap: [String: UIView]) {
        self.rootView = rootView
        self.viewMap = viewMap
    }
    
    /**
        Creates constraints with visual format language. This method will not add any constraint if no view map is present.
    
        :param: format
                Constraints in visual format.
    
        :returns:
                Craeted constraints.
    */
    @discardableResult
    public func createWithVisualFormat(_ format: String) -> [NSLayoutConstraint] {
        var vc = [NSLayoutConstraint]()
        if let vm = viewMap {
            vc = NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: vm) as! [NSLayoutConstraint]
        }
        
        constraints += vc
        return vc
    }
    
    /**
        Installs all the constraints on the root view.
    */
    public func installConstraints() {
        rootView.addConstraints(constraints)
    }
    
    /**
        Uninstalls all the constraints from the root view, but will still keep all the constraints. 
        You can install them again at later point in time.
    */
    public func uninstallConstraints() {
        rootView.removeConstraints(constraints)
    }
    
    /**
        Activates all the constraints.
    */
    public func activateConstraints() {
        NSLayoutConstraint.activate(constraints)
    }

    /**
        Deactivates all the constraints.
    */
    public func deactivateConstraints() {
        NSLayoutConstraint.deactivate(constraints)
    }
    
    /**
        Uninstalls all the constraints and removes them all.
    */
    public func clearConstraints() {
        uninstallConstraints()
        constraints.removeAll(keepingCapacity: false)
    }
}


