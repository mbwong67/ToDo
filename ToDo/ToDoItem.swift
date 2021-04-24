//
//  ToDoItem.swift
//  ToDo
//
//  Created by Yew Wai Hon on 17/04/2021.
//

import Foundation

struct ToDoItem: Identifiable, Codable {
  var id = UUID()
  var title: String
  var important: Bool
  
  init(title: String, important: Bool) {
    self.title = title
    self.important = important
  }
}

class ToDoStorage: ObservableObject {
  @Published var toDos = [ToDoItem]() {
    didSet {
      UserDefaults.standard.set(try? PropertyListEncoder().encode(toDos), forKey: "toDos")
    }
  }
  
  init() {
    if let data = UserDefaults.standard.value(forKey: "toDos") as? Data {
      if let userDefaultsTodos = try? PropertyListDecoder().decode(Array<ToDoItem>.self, from: data) {
        toDos = userDefaultsTodos
      }
    }
  }
}
