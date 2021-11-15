//  ToDoList.swift
//  ToDo
//  Created by Efe on 03.11.2021.
import UIKit

class ToDoList: UIViewController {
//MARK: Initialization
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
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
    
//MARK: Adding Button Pressed
    @IBAction func addButtonPressed(_ sender: Any) {
    addingButtonPressed(title: "Add new Task", message: "Write down a new Task", style: .alert)
    }
    
//MARK: Adding Button Pressed Alert
    func addingButtonPressed(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertButton1 = UIAlertAction(title: "Cancel", style: .cancel, handler: .none)
        let alertButton2 = UIAlertAction(title: "Add", style: .default) { UITableView in
            
        }
        alert.addTextField(configurationHandler: { textField in textField.placeholder = "New Task"})
        alert.addAction(alertButton1)
        alert.addAction(alertButton2)
        self.present(alert, animated: true, completion: .none)
    }
}
