//
//  ContentView.swift
//  toDoList
//
//  Created by Sena Lee on 9/13/21.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        ToDo(title: "history notes"),
        ToDo(title: "english essay"),
        ToDo(title: "chem video")
    ]
    
    var body: some View {
        NavigationView {
            List(todos) { todo in
                Text(todo.title)
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
