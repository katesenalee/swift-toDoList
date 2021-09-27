//
//  ContentView.swift
//  toDoList
//
//  Created by Sena Lee on 9/13/21.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        ToDo(title: "history notes", isCompleted: true),
        ToDo(title: "english essay"),
        ToDo(title: "chem video")
    ]
    @State var showSheet = false
    
    var body: some View {
        NavigationView {
            ZStack {
                List{
                    if (todos.filter{$0.isCompleted == false}.count > 0) {
                        Section(header: Text("To Complete")) {
                            TodosView(todos: $todos)
                        }
                    }
                    if (todos.filter{$0.isCompleted == true}.count > 0) {
                        Section(header: Text("Completed")) {
                            TodosView(todos: $todos, done: true)
                        }
                    }
                }
                .navigationTitle("To-Dos")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showSheet = true
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $showSheet) {
            NewToDoView(todos: $todos)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
