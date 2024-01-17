//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by datttrian on 2024-01-16.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
