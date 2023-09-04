//
//  To_Do_ListApp.swift
//  To-Do-List
//
//  Created by Büşra Kocakuşaklı on 29.08.2023.
//

import SwiftUI

@main
struct To_Do_ListApp: App {
    @State var currentTodos = Todos(todos: [])
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(currentTodos)
        }
    }
}
