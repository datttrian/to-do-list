//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init () {}
}
