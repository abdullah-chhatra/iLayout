//
//  ExampleViewController.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 6/6/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    let myView : UIView
    let titleText : String
    
    init(view: UIView, titleText: String) {
        myView = view
        self.titleText = titleText
        super.init(nibName: nil, bundle: nil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = myView
        navigationItem.title = titleText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.translucent = false
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Plain, target: self, action: "")
    }
}
