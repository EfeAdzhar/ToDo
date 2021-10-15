//
//  ViewControllerTwo.swift
//  ToDo
//
//  Created by Efe on 28.09.2021.
//

//    @IBAction func didTapButton() {
//        let viewController = storyboard?.instantiateViewController(withIdentifier: "viewController") as! ViewController
//
//


import UIKit

class SecondViewController: UIViewController {
//MARK: METHOD
    @IBOutlet weak var closeButton: UIButton!
    
    override class func awakeFromNib() {
        print("awakeFromNib")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    @IBAction func backButtonPressed(_ sender: UIButton) {
        print("i'm back")
       dismiss(animated: true)
    }
//        @IBAction func close(_ sender: UIButton) {
//        dismiss(animated: true, completion: nil)
//    }
}
