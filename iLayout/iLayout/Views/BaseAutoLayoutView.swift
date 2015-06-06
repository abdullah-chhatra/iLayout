//
//  SimpleAutoLayoutView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

public class BaseAutoLayoutView : UIView {
    
    public convenience init() {
        self.init(frame: CGRectMake(0, 0, 0, 0))
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initializeView()
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeView()
    }
    
    public func initializeView() {
        
    }
}