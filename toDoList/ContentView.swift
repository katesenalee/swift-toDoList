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
    
    var body: some View {
        NavigationView {
            ZStack {
                List{
                    if (todos.filter{$0.isCompleted == false}.count > 1) {
                        Section(header: Text("To Complete")) {
                            TodosView(todos: $todos)
                        }
                    }
                    if (todos.filter{$0.isCompleted == true}.count > 1) {
                        Section(header: Text("Completed")) {
                            TodosView(todos: $todos, done: true)
                        }
                    }
                }
                .navigationTitle("To-Dos")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
