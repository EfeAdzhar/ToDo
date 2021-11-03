//  ToDoList.swift
//  ToDo
//  Created by Efe on 03.11.2021.
import UIKit

class ToDoList: UIViewController {
//MARK: Initialization
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//MARK: Showing when View will Appear
    override func viewDidAppear(_ animated: Bool) {
        welcomeAlert(title: "Welcome to ToDoList", message: "It's still in development", style: .alert)
    }
//MARK: Back to Main Menu
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: .none)
    }
//MARK: Welcome Alert
    func welcomeAlert(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let alertButton = UIAlertAction(title: "OK", style: .default, handler: .none)
        alert.addAction(alertButton)
        self.present(alert, animated: true, completion: .none)
    }
}
