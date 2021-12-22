//
//  JSON.swift
//  ToDo
//
//  Created by Efe on 22.12.2021.
//

import Foundation

struct Result : Decodable {
    let results : [JSON]
}

struct JSON: Decodable {
    let userId : Int
    let id : Int
    let title : String
    let completed : Bool
}
