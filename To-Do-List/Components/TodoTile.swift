//
//  TodoTile.swift
//  To-Do-List
//
//  Created by Büşra Kocakuşaklı on 29.08.2023.
//

import SwiftUI

struct TodoTile: View {
    var todo: Todo
    var onCheck: (Bool) -> Void
    init(todo: Todo, onCheck: @escaping (Bool) -> Void) {
        self.todo = todo
        self.onCheck = onCheck
    }
    
    var body: some View {
        HStack {
            CustomCheckBox(defaultChecked: todo.checked, onCheck: onCheck).frame(width: 30)
            
            Text(todo.content)
        }
            }
}

struct TodoTile_Previews: PreviewProvider {
    static var previews: some View {
        let currentTodos = Todos(todos: [])
        
        ContentView()
            .environmentObject(currentTodos)
    }
}
