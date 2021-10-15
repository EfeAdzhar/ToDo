//  ViewController.swift
//  ToDo
//  Created by Efe on 25.09.2021.
import UIKit
class ViewController: UIViewController {
//MARK: Saving origins
    override func viewDidLoad() {
        super.viewDidLoad()
        originalColor = openViewController.backgroundColor
        originalPosition = openViewController.frame.origin
        print("ViewController")
    }
//MARK: Initialization
    @IBOutlet weak var openViewController: UIButton!
    @IBOutlet weak var buttonHeight: NSLayoutConstraint!
    @IBOutlet weak var buttonWidth: NSLayoutConstraint!
    @IBOutlet weak var buttonPosition: NSLayoutConstraint!
    @IBOutlet weak var buttonPosition2: NSLayoutConstraint!
    var originalColor : UIColor?
    var originalPosition : CGPoint?
    
//MARK: Open View Controller -> Second View Controller
    @IBAction func buttonPressed(_ sender: Any) {
        print("The Button Has Been Pressed")
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
//MARK: Changing Button Color
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
        openViewController.backgroundColor = openViewController.backgroundColor == originalColor ? .red : originalColor
    }
//MARK: Changing Button Size On Screen
    @IBAction func buttonThreePressed(_ sender: UIButton) {
        if buttonHeight.constant == 75 && buttonWidth.constant == 244  {
            UIView.animate(withDuration: 0.35, animations: { () -> Void in self.buttonHeight.constant = 90
                self.buttonWidth.constant = 300
                self.view.layoutIfNeeded()
            })
        } else {
            UIView.animate(withDuration: 0.35, animations: { () -> Void in self.buttonHeight.constant = 75
                self.buttonWidth.constant = 244
                self.view.layoutIfNeeded()
            })
        }
    }
//MARK: Changing Button Position On Screen
    @IBAction func buttonFourPressed(_ sender: UIButton) {
        if buttonPosition.constant == 383 && buttonPosition2.constant == 22.5 {
            UIView.animate(withDuration: 0.35, animations: { () -> Void in self.buttonPosition.constant = 250
                self.buttonPosition2.constant = 80
                self.view.layoutIfNeeded()
            })
        } else {
            UIView.animate(withDuration: 0.35, animations: { () -> Void in self.buttonPosition.constant = 383
                self.buttonPosition2.constant = 22.5
                self.view.layoutIfNeeded()
            })
        }
     }
 }

//MARK: Code that works
//MARK: My tested code
//        if buttonWidth.constant == 244 {
//            UIView.animate(withDuration: 0.35, animations: { () -> Void in self.buttonWidth.constant = 300
//                self.view.layoutIfNeeded()
//            })
//        } else {
//            UIView.animate(withDuration: 0.35, animations: { () -> Void in self.buttonWidth.constant = 244
//                self.view.layoutIfNeeded()
//            })
//         }

   //  if openViewController.frame.origin == originalPosition {
   //            openViewController.frame.origin = CGPoint(x : 10, y : 10)
   //        }
   //        else {
   //            openViewController.frame.origin = originalPosition!
   //        }
   //}

//let X_Position : CGFloat = 5.0
//        let Y_Position : CGFloat = 5.0
//        openViewController.frame = CGRect(x: X_Position, y: Y_Position, width: self.view.frame.width, height: 5.0)
//        openViewController.frame.origin = CGPoint.init(x: 5, y: 5)

//        if openViewController.backgroundColor == originalColor {
//            openViewController.backgroundColor = UIColor.red
//        } else {
//            openViewController.backgroundColor = originalColor
//          }
        
//        if counter != 0 {
//            openViewController.backgroundColor = originalColor
//        }
//        counter += 1
//
        

//if counter % 2 == 0 {
//            openViewController.backgroundColor = UIColor.red
//        }
//        if counter % 2 != 0 {
//            openViewController.backgroundColor = originalColor
//        }
//
//        counter += 1

//
//    @IBAction func didTapButton() {
//        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
//        present(secondViewController, animated: true)
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender : Any?) {
//
//        if segue.identifier == "SecondViewSegue" {
//            let dvc = segue.destination as! SecondViewController
//            dvc.someProperties = ""
//        }
//
//    }
