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
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CELLID)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELLID, for: indexPath) 
        
        cell.textLabel?.text = options[(indexPath as NSIndexPath).row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch (indexPath as NSIndexPath).row {
        case 0:
            let vc = ExampleViewController(view: PinSuverviewView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
            
        case 1:
            let vc = ExampleViewController(view: SetDimensionsView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break

        case 2:
            let vc = ExampleViewController(view: RelativeDimensionView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
            
        case 3:
            let vc = ExampleViewController(view: PlacementView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
        
        case 4:
            let vc = ExampleViewController(view: FillSuperviewView(), titleText: options[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
            break
        
        case 5:
            let vc = storyboard?.instantiateViewController(withIdentifier: "LayoutViewController") as! LayoutViewController
            vc.layoutProvider = VerticalLayoutProvider()
            navigationController?.pushViewController(vc, animated: true)
            break

        case 6:
            let vc = storyboard?.instantiateViewController(withIdentifier: "LayoutViewController") as! LayoutViewController
            vc.layoutProvider = HorizontalLayoutProvider()
            navigationController?.pushViewController(vc, animated: true)
            break

        case 7:
            let vc = storyboard?.instantiateViewController(withIdentifier: "LayoutViewController") as! LayoutViewController
            vc.layoutProvider = AutoScrollVerticalLayoutProvider()
            navigationController?.pushViewController(vc, animated: true)
            break

        case 8:
            let vc = storyboard?.instantiateViewController(withIdentifier: "LayoutViewController") as! LayoutViewController
            vc.layoutProvider = AutoScrollHorizontalLayoutProvider()
            navigationController?.pushViewController(vc, animated: true)
            break

            
        default:
            break
        }
    }
}

