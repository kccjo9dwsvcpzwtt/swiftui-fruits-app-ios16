//
//  ContentView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-21.
//

import SwiftUI

struct ContentView: View {
  
  //MARK: - PROPERTIES
  
  var fruits: [Fruit] = fruitsData
  
  //MARK: - BODY
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(fruits.shuffled()) {item in
          FruitRowView(fruit: item)
            .padding(.vertical, 4)
        }
      }
      .navigationTitle("Fruits")
    } //: NAVIGATION STACK
  }
}

#Preview {
  ContentView(fruits: fruitsData)
}
