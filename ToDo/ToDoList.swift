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
      Text("Walk the Dog")
      Text("Buy Cheese")
      Text("Learn SwiftUI")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoList()
  }
}
