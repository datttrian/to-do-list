//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return
        }
        
        print("Called")
    }
    
    func validate() {
        
    }
}
