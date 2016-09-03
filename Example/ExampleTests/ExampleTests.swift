//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import UIKit
import XCTest


class ExampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let view = UIView()
        let subView = UILabel.instanceWithAutoLayout()
        view.addSubview(subView)
        
        
        let layout = Layout(rootView: view)
        let hc = layout.horizontallyAlignView(subView, withView: view, offset: 10)
        
        XCTAssert(hc.firstItem === subView, "")
        XCTAssert(hc.secondItem! === view, "")
        XCTAssert(hc.firstAttribute == NSLayoutAttribute.CenterX, "")
        XCTAssert(hc.secondAttribute == NSLayoutAttribute.CenterX, "")
        XCTAssert(hc.multiplier == 1, "")
        
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
