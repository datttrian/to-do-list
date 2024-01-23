//
//  NewItemView.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
            
            Form {
                // Title
                TextField("Title", text: $viewModel.title)
                
                // Due Date
                
                // Button
            }
                
        }
    }
}

#Preview {
    NewItemView()
}
