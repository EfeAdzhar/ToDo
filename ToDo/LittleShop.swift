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
    var buttonShare = UIButton();
    var activityViewController : UIActivityViewController? = nil
    var imageArray = [UIImage(named: "3b8ad2c7b1be2caf24321c852103598a.jpg"),
                      UIImage(named: "5e921526faf7fcd6bd2cb60260a9affb.jpg"),
                      UIImage(named: "243-2437335_sunset-horizon-scenery-landscape-art-4k-painting.jpg")]
    
    var selectArray = ["one", "two", "three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //creating Segment
        createSegment()
        //creating Image
        createImage()
        //create Button
        createButton()
        //Targer
        self.segment.addTarget(self, action: #selector(selectedValue(sender:)), for: .valueChanged)
    }
    
    @objc func selectedValue(sender : UISegmentedControl) {
        if sender == self.segment {
            let segmentIndex = sender.selectedSegmentIndex
            self.image.image = self.imageArray[segmentIndex]
        }
    }
    //MARK: Creating Segment
    func createSegment() {
        self.segment = UISegmentedControl(items: selectArray)
        self.segment.frame = CGRect(x: 110, y: 650, width: 200, height: 30)
        self.view.addSubview(segment)
    }
    //MARK: Creating Image
    func createImage() {
        self.image.frame = CGRect(x: 0, y: 0, width: 500, height: 400)
        self.image.center = self.view.center
        self.image.image = self.imageArray[0]
        self.view.addSubview(image)
    }
    //MARK: Creating Button
    func createButton () {
        self.buttonShare = UIButton(type: .roundedRect)
        self.buttonShare.frame = CGRect(x: 110, y: 680, width: 200, height: 44)
        self.buttonShare.setTitle("Share", for: .normal)
        self.buttonShare.backgroundColor = .blue
        //        self.buttonShare.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
        self.view.addSubview(self.buttonShare)
    }
}
