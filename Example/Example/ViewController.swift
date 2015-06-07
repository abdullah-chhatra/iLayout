//
//  ViewController.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let CELLID = "Cellid"
    let options = [ "Pin to egde/margin of Superview",
                    "Set dimentions",
                    "Relative dimensions"]
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: CELLID)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CELLID, forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = options[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            var vc = ExampleViewController(view: PinSuverviewView())
            navigationController?.pushViewController(vc, animated: true)
            break
            
        case 1:
            var vc = ExampleViewController(view: SetDimensionsView())
            navigationController?.pushViewController(vc, animated: true)
            break

        case 2:
            var vc = ExampleViewController(view: RelativeDimensionView())
            navigationController?.pushViewController(vc, animated: true)
            break
            
            
        default:
            break
        }
    }
}

