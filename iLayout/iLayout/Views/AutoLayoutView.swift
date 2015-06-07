//
//  AutoLayoutView.swift
//  iLayout
//
//  Created by Abdulmunaf Chhatra on 5/22/15.
//  Copyright (c) 2015 Abdullah. All rights reserved.
//

import Foundation

/**
    Base class for simple code based composite view that uses autolayout to layout its subviews.

    Example:

        class LoginView : AutoLayoutView {

            let userName = UITextField.instanceWithAutoLayout()
            let password = UITextField.instanceWithAutoLayout()
            let loginButton = UIButton.buttonWithType(.System) as UIButton

            override func initializeView() {
                userName.placeholder = "User Name"
                addSubview(userName)

                password.placeholder = "Password"
                addSubview(password)

                loginButton.setTitle("Login", forState: .Normal)
                loginButton.setTranslatesAutoresizingMaskIntoConstraints(false)
                addSubview(loginButton)

                super.initializeView()
            }

            override func addConstraints(layout: Layout) {
                layout.fillBottomOfSuperview(loginButton)

                layout.fillWidthOfSuperview(password)
                layout.placeView(password, above: loginButton, spacing: 5)

                layout.fillWidthOfSuperview(userName)
                layout.placeView(userName, above: password, spacing: 5)
            }
        }

*/
public class AutoLayoutView : BaseAutoLayoutView {
    
    private var didAddConstraints = false

    /**
        Override this method to initialize all the subviews. Please call super.initializeView()
        at the end of overridden method.
    */
    public override func initializeView() {
        setNeedsUpdateConstraints()
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
    
    /**
        Override this method to add constraints that will layout all the subviews. This method will
        be called only once when updateConstraints() is called for the first time.
    
        :param: layout
                Layout object to add constraints.
    */
    public func addConstraints(layout: Layout) {
        fatalError("This method must be implemented by subclass")
    }
}

