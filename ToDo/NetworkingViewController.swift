//  NetworkingViewController.swift
//  ToDo
//  Created by Efe on 21.12.2021.

import UIKit

class NetworkingViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupSearchBar()
        JSON()
    }
    
    private func setupTableView() {
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func JSON() {
        let urlString = "https://jsonplaceholder.typicode.com/todos/"
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { data, responds, error in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else {return}
            let jsonString = String(data: data, encoding: .utf8)
            print(jsonString ?? "0")
        }
    }
}

struct JSON: Decodable {
    let userId : Int
    let id : Int
    let title : String
    let completed : Bool
}

extension NetworkingViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "123"
        cell.backgroundColor = .systemIndigo
        return cell
    }
}
