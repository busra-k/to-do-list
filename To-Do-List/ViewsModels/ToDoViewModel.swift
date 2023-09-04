//
//  ToDoViewModel.swift
//  To-Do-List
//
//  Created by Büşra Kocakuşaklı on 29.08.2023.
//

import Foundation

class Todos: ObservableObject {
    @Published var todos: [Todo] = []
    
    func addTodo(content: String) {
        todos.append(Todo(id: UUID().uuidString, content: content, checked: false))
    }
    
    func removeTodo(id: String) {
        let todoIndex = todos.firstIndex { todo in
            return todo.id == id
        }
        
        guard todoIndex != nil else {
            return
        }
        
        todos.remove(at: todoIndex!)
    }
    
    func checkTodo(id:String) {
        
        let todoIndex = todos.firstIndex { todo in
            return todo.id == id
        }
        
        guard todoIndex != nil else {
            return
        }
        todos[todoIndex!].checked.toggle()
    }
    
    init(todos: [Todo]) {
        self.todos = todos
    }
}
