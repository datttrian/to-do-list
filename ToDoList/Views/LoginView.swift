//
//  LoginView.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView()
            
            // Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    // Attempt log in
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                })
            }
            
            // Create Account
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
