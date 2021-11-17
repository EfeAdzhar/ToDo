//
//  Player.swift
//  ToDo
//
//  Created by Efe on 17.11.2021.
//

import UIKit

class Player: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        alertAfterViewDidLoad(title: "Welcome To Player", message: "It's a Test", preferredStyle: .alert)
        
    }
    func alertAfterViewDidLoad(title : String, message : String, preferredStyle: UIAlertController.Style ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let alertButton = UIAlertAction(title: "OK", style: .default, handler: .none)
        alert.addAction(alertButton)
        self.present(alert, animated: true, completion: .none)
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: .none)
    }
}
