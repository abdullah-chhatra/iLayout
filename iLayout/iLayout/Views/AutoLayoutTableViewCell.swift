//
//  AutoLayoutTableViewCell.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 6/7/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

/**
    Extend this class to create custom table view cell with auto layout.
*/
public class AutoLayoutTableViewCell : UITableViewCell {
 
    private var didAddConstraints = false
    
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initializeCell()
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /**
        Override this method to initialize all the subviews. Please call super.initializeView()
        at the end of overridden method.
    
        Make sure to to add subviews to `contentView` and not `self`
    */
    public func initializeCell() {
        setNeedsUpdateConstraints()
    }
    
    /**
        Override this method to add constraints that will layout all the subviews. This method will
        be called only once when updateConstraints() is called for the first time.
    
        :param: layout
                Layout object to add constraints.
    */
    public func addConstraints(layout: Layout) {
        fatalError("This method must be implemented by subclass")
    }
    
    public override func updateConstraints() {
        
        if !didAddConstraints {
            
            let layout = Layout(rootView: self)
            addConstraints(layout)
            layout.installConstraints()
            
            didAddConstraints = true
        }
        super.updateConstraints()
    }
}