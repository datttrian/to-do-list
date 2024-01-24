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
                
                // Info: Name, Email, Member since
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                        Text("Afraz Siddiqui ")
                    }
                    
                    HStack {
                        Text("Email: ")
                        Text("Afraz Siddiqui ")
                    }
                    
                    HStack {
                        Text("Member Since: ")
                        Text("Afraz Siddiqui ")
                    }
                }
                
                // Sign out
            }
            
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
