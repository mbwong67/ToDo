//
//  CreateToDo.swift
//  ToDo
//
//  Created by Yew Wai Hon on 23/04/2021.
//

import SwiftUI

struct CreateToDo: View {
  @State var toDoTitle = ""
  
  var body: some View {
    List {
      TextField("Ex. Walk the Dog", text: $toDoTitle)
    }
  }
}

struct CreateToDo_Previews: PreviewProvider {
  static var previews: some View {
    CreateToDo()
  }
}
