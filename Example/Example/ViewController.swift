//
//  ViewController.swift
//  Example
//
//  Created by Abdulmunaf Chhatra on 5/25/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import UIKit
import iLayout

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let CELLID = "Cellid"
    let options = [ "Pin to egde/margin of Superview",
                    "Set dimentions",
                    "Relative dimensions",
                    "Placement and Alignment",
                    "Fill superview",
                    "Vertical Lineaer Layout",
                    "Horizontal Lineaer Layout",
                    "Auto adjust Vertical Scroll View",
                    "Auto adjust Horizontal Scroll View"]
    
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
            var vc = ExampleViewController(view: PinSuverviewView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
            
        case 1:
            var vc = ExampleViewController(view: SetDimensionsView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break

        case 2:
            var vc = ExampleViewController(view: RelativeDimensionView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
            
        case 3:
            var vc = ExampleViewController(view: PlacementView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
        
        case 4:
            var vc = ExampleViewController(view: FillSuperviewView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
        
        case 5:
            var vc = storyboard?.instantiateViewControllerWithIdentifier("LayoutViewController") as! LayoutViewController
            vc.layoutView = VerticalLinearLayoutView.instanceWithAutoLayout()
            navigationController?.pushViewController(vc, animated: true)
            break

        case 6:
            var vc = storyboard?.instantiateViewControllerWithIdentifier("LayoutViewController") as! LayoutViewController
            vc.layoutView = HorizontalLinearLayoutView.instanceWithAutoLayout()
            navigationController?.pushViewController(vc, animated: true)
            break

        case 7:
            var vc = storyboard?.instantiateViewControllerWithIdentifier("LayoutViewController") as! LayoutViewController
            vc.layoutView = AutoAdjustContentSizeVerticalScrollView.instanceWithAutoLayout()
            navigationController?.pushViewController(vc, animated: true)
            break

        case 8:
            var vc = storyboard?.instantiateViewControllerWithIdentifier("LayoutViewController") as! LayoutViewController
            vc.layoutView = AutoAdjustContentSizeHorizontalScrollView.instanceWithAutoLayout()
            navigationController?.pushViewController(vc, animated: true)
            break

            
        default:
            break
        }
    }
}

