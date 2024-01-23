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
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return false
        }
        
        guard dueDate > Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
