//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        //        return currentUserId != ""
        return Auth.auth().currentUser != nil
    }
}
