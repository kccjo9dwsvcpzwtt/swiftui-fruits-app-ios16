//
//  OnboardingView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-22.
//

import SwiftUI

struct OnboardingView: View {
  
  //MARK: - PROPERTIES
  
  var fruits: [Fruit] = fruitsData
  
  //MARK: - CONTENT
  
  var body: some View {
    TabView {
      ForEach (fruits[0...5]) { item in
        
        FruitCardView(fruit: item)
        
        // Text("Cards")
        
      } //: FOREACH LOOP
    } //: TABVIEW
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

//MARK: - PREVIEW

#Preview {
  OnboardingView(fruits: fruitsData)
}
