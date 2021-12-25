//
//  JSON.swift
//  ToDo
//
//  Created by Efe on 22.12.2021.
//

import Foundation

//struct Result : Decodable {
//    let results : [JSON]
//}
//
//struct JSON: Decodable {
//    let userId : Int
//    let id : Int
//    let title : String
//    let completed : Bool
//}

struct JSON: Decodable {
    func url() {
        let urlString = "https://jsonplaceholder.typicode.com/todos/"
        guard let url = URL(string: urlString) else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, responds, error in
            if let data = data {
                let dataSession = String(data: data, encoding: .utf8)
                print(dataSession!)
            }
        }
        task.resume()
    }
}
