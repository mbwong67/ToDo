//
//  ToDoList.swift
//  ToDo
//
//  Created by Yew Wai Hon on 16/04/2021.
//

import SwiftUI

struct ToDoList: View {
  var body: some View {
    List {
      ForEach([ToDoItem(title: "Walk the Dog", important: false),
               ToDoItem(title: "Buy Cheese", important: true),
               ToDoItem(title: "Learn SwiftUI", important: true),
               ToDoItem(title: "Work Out", important: true)]) {
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
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoList()
  }
}
