//
//  LittleShop.swift
//  ToDo
//
//  Created by Efe on 20.11.2021.
//

import UIKit

class LittleShop: UIViewController {
//MARK: Variables
    var segment = UISegmentedControl()
    var selectArray = ["one", "two", "three"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating Segment
        self.segment = UISegmentedControl(items: selectArray)
        self.segment.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        self.view.addSubview(segment)
    }
}
