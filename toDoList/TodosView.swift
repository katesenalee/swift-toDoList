import SwiftUI

struct TodosView: View {
    
    @Binding var todos: [ToDo]
    var done = false
    
    var body: some View {
        ForEach(todos.filter {$0.isCompleted == done}) { todo in
            HStack {
                Image(systemName: todo.isCompleted ? "checkmark.square" : "squareshape")
                    .font(.system(size: 12))
                    .foregroundColor(todo.isCompleted ? .gray : .black)
                Text(todo.title)
                    .strikethrough(todo.isCompleted)
                    .foregroundColor(todo.isCompleted ? .gray : .black)
            }
            .onTapGesture {
                let todoIndex = todos.firstIndex{
                    $0.id == todo.id
                }!
                todos[todoIndex].isCompleted.toggle()
            }
        }
        .onDelete(perform: { indexSet in
            todos.remove(atOffsets: indexSet)
        })
    }
}

struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView(todos: .constant([
            ToDo(title: "eat the asians"),
            ToDo(title: "bananas")
        ]))
    }
}
