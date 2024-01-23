//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary Tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
