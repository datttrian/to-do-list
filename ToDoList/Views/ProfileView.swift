//
//  ProfileView.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: Name, Email, Member since
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                            .bold()
                        Text("Afraz Siddiqui ")
                    }
                    .padding()
                    
                    HStack {
                        Text("Email: ")
                            .bold()
                        Text("Afraz Siddiqui ")
                    }
                    .padding()
                    
                    HStack {
                        Text("Member Since: ")
                            .bold()
                        Text("Afraz Siddiqui ")
                    }
                    .padding()
                }
                .padding()
                
                // Sign out
                Button("Log Out") {
                    viewModel.logOut()
                }
                .tint(.red)
                .padding()
                
                Spacer()
                
            }
            .navigationTitle("Profile")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
