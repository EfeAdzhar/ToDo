//  NetworkingViewController.swift
//  ToDo
//  Created by Efe on 21.12.2021.

import UIKit

class NetworkingViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    let json = JSON()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        json.url()
//        request(urlString: urlString) { result, error in
//            result?.results.map({ (title) in
//                print(title.title)
//            })
//        }
    }
    
    private func setupTableView() {
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
//    func request(urlString : String, completion : @escaping (Result?, Error?) -> Void) {
//        guard let url = URL(string: urlString) else {return}
//        URLSession.shared.dataTask(with: url) { data, responds, error in
//            DispatchQueue.main.async {
//                if let error = error {
//                    print(error)
//                    completion(nil, error)
//                    return
//                }
//                guard let data = data else {return}
//                do {
//                 let result = try JSONDecoder().decode(Result.self, from: data)
//                    completion(result, nil)
//                } catch let jsonError {
//                    print("Failed to Decode", jsonError)
//                    completion(nil, jsonError)
//                }
//            }
//        }.resume()
//    }
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
