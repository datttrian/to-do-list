//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import Foundation

/// ViewModel for list of items view
/// Primary Tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init () {}
    
    func delete(id: String) {
        
    }
}
