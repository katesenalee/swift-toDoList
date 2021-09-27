//
//  NewToDoView.swift
//  toDoList
//
//  Created by Sena Lee on 9/27/21.
//

import SwiftUI

struct NewToDoView: View {
    @State var todoText = ""
    @Binding var todos: [ToDo]
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        NavigationView {
            Form {
                TextField("New To-Do", text: $todoText)
                Button("To-Do...") {
                    todos.append(ToDo(title: todoText))
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .navigationTitle("New To-Do")
        }
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(todos: .constant([]))
    }
}
