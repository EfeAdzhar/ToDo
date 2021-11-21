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
    var image = UIImageView()
    var imageArray = [UIImage(named: "3b8ad2c7b1be2caf24321c852103598a.jpg"),
                      UIImage(named: "5e921526faf7fcd6bd2cb60260a9affb.jpg"),
                      UIImage(named: "243-2437335_sunset-horizon-scenery-landscape-art-4k-painting.jpg")]
    
    var selectArray = ["one", "two", "three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //creating Segment
        self.segment = UISegmentedControl(items: selectArray)
        self.segment.frame = CGRect(x: 110, y: 700, width: 200, height: 30)
        self.view.addSubview(segment)
        //creating image
        self.image.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        self.image.center = self.view.center
        self.image.image = self.imageArray[0]
        self.view.addSubview(image)
        //Targer
        self.segment.addTarget(self, action: #selector(selectedValue(sender:)), for: .valueChanged)
    }
    @objc func selectedValue(sender : UISegmentedControl) {
        if sender == self.segment {
            let segmentIndex = sender.selectedSegmentIndex
            self.image.image = self.imageArray[segmentIndex]
        }
    }
}
