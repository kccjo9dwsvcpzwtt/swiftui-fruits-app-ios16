//
//  ContentView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-21.
//

import SwiftUI

struct ContentView: View {
  
  //MARK: - PROPERTIES
  
  @State private var isShowingSettings: Bool = false
  
  var fruits: [Fruit] = fruitsData
  
  //MARK: - BODY
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(fruits.shuffled()) {item in
          NavigationLink(destination: FruitDetailView(fruit: item)) {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Fruits")
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          } //: BUTTON
          .sheet(isPresented: $isShowingSettings, content: {
            SettingsView()
          })
      )
    } //: NAVIGATION STACK
  }
}

//MARK: - PREVIEW

#Preview {
  ContentView(fruits: fruitsData)
}
