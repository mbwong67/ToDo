//
//  CreateToDo.swift
//  ToDo
//
//  Created by Yew Wai Hon on 23/04/2021.
//

import SwiftUI

struct CreateToDo: View {
  @State var toDoTitle = ""
  @State var important = false
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    List {
      Section {
        TextField("Ex. Walk the Dog", text: $toDoTitle)
      }
      Section {
        Toggle(isOn: $important) {
          Text("Important")
        }
      }
      Section {
        Button("Save") {
          self.presentationMode.wrappedValue.dismiss()
        }
      }
    } // List
    .listStyle(GroupedListStyle())
  }
}

struct CreateToDo_Previews: PreviewProvider {
  static var previews: some View {
    CreateToDo()
  }
}
