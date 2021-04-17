//
//  ToDoItem.swift
//  ToDo
//
//  Created by Yew Wai Hon on 17/04/2021.
//

import Foundation

struct ToDoItem: Identifiable {
  var id = UUID()
  var title: String
  var important: Bool
  
  init(title: String, important: Bool) {
    self.title = title
    self.important = important
  }
}