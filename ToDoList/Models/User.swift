//
//  User.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
