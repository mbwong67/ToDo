//
//  ToDoList.swift
//  ToDo
//
//  Created by Yew Wai Hon on 16/04/2021.
//

import SwiftUI

struct ToDoList: View {
  @EnvironmentObject var toDoStorage: ToDoStorage
  
  var body: some View {
    NavigationView {
      List {
        ForEach(self.toDoStorage.toDos) {
          todo in
          if todo.important {
            Text(todo.title)
              .bold()
              .foregroundColor(.white)
              .padding(4)
              .background(Rectangle())
              .foregroundColor(.red)
              .cornerRadius(5)
          } else {
            Text(todo.title)
          }
        } // For Each
        .onDelete(perform: { indexSet in
          if let index = indexSet.first {
            self.toDoStorage.toDos.remove(at: index)
          }
        })
      } // List
      .navigationBarTitle("To Dos")
      .navigationBarItems(trailing: NavigationLink(destination: CreateToDo()) {
        Text("Add")
      })
    } // NavigationView
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoList().environmentObject(ToDoStorage())
  }
}
