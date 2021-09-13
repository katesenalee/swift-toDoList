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
            List(todos) { todo in
                HStack {
                    Image(systemName: todo.isCompleted ? "checkmark.square" : "squareshape")
                        .font(.system(size: 12))
                        .foregroundColor(todo.isCompleted ? .gray : .black)
                    Text(todo.title)
                        .strikethrough(todo.isCompleted)
                        .foregroundColor(todo.isCompleted ? .gray : .black)
                }
            }
            .navigationTitle("To-Dos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
