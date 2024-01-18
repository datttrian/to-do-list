//
//  ContentView.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, viewModel.currentUserId != "" {
            // signed in
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
