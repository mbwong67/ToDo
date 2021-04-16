//
//  ContentView.swift
//  ToDo
//
//  Created by Yew Wai Hon on 16/04/2021.
//

import SwiftUI

struct MyFirstView: View {
  var body: some View {
    Button(action: {
      print("Hello, world!")
    }, label: {
      Circle()
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MyFirstView()
  }
}
