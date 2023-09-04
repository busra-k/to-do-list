//
//  TodoListView.swift
//  To-Do-List
//
//  Created by Büşra Kocakuşaklı on 29.08.2023.
//

import SwiftUI

struct TodoListView: View {
    @EnvironmentObject var todoObj: Todos
    @State var showAddSheet = false
    @State var currentContent = ""
    
    func handleAdd() {
        showAddSheet = true
    }
    
    func createTodo() {
        todoObj.addTodo(content: currentContent)
        currentContent = ""
    }
    var body: some View {
        NavigationStack {
            List(todoObj.todos) { todo in TodoTile(todo: todo) { _ in todoObj.checkTodo(id: todo.id)
                
              }
            .swipeActions {
                Button(role: .destructive) {
                    todoObj.removeTodo(id: todo.id)
                } label: {
                    Image(systemName: "trash")
                }
            }
                
            }
            .listStyle(.inset)
            .navigationTitle("Swiftui To-Do List")
            .toolbar {
                ToolbarItem {
                    Button(action: handleAdd) {
                        Image(systemName: "plus")
                    }
                }
            }
            .alert("", isPresented: $showAddSheet) {
                TextField("To-Do Content", text: $currentContent)
                Button("Cancel", role: .cancel) {}
                Button("Create", action: createTodo)
            }
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        let currentTodos = Todos(todos: [])
        
        ContentView()
            .environmentObject(currentTodos)
    }
}

