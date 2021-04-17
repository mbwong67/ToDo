//
//  ToDoList.swift
//  ToDo
//
//  Created by Yew Wai Hon on 16/04/2021.
//

import SwiftUI

struct ToDoList: View {
  var body: some View {
    Button(action: {
      print("Hello, world!")
    }, label: {
      Text("Hello")
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Rectangle().foregroundColor(.green))
        .cornerRadius(10)
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoList()
  }
}
