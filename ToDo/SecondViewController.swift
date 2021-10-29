//  ViewControllerTwo.swift
//  ToDo
//  Created by Efe on 28.09.2021.

import UIKit

class SecondViewController: UIViewController {
//MARK: METHOD
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var errorButton: UIButton!
//MARK: UIViewController Lifecycle
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

//MARK: Back Button Pressed
    @IBAction func backButtonPressed(_ sender: UIButton) {
        print("i'm back")
       dismiss(animated: true)
    }
//MARK: Error Button Pressed
    @IBAction func errorButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Error", message: "Suprice, it's an error :)", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "my bad", style: .default)
//If person presses "not ok", he will go back to mainViewController
        let action2 = UIAlertAction(title: "not ok", style: .cancel) { action2 in
            self.dismiss(animated: true, completion: nil)
        }
//Adding some stuff
        alertController.addAction(action1)
        alertController.addAction(action2)
        self.present(alertController, animated: true, completion: nil)
    }
}
