//
//  ContentView.swift
//  To-Do-List
//
//  Created by Büşra Kocakuşaklı on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     TodoListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let currentTodos = Todos(todos: [])
        ContentView()
            .environmentObject(currentTodos)
    }
}
