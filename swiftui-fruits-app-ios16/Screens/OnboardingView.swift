//
//  OnboardingView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-22.
//

import SwiftUI

struct OnboardingView: View {
  
  //MARK: - PROPERTIES
  
  //MARK: - CONTENT
  
  var body: some View {
    TabView {
      ForEach(1..<5) { item in
        FruitCardView()
      } //: FOREACH LOOP
    } //: TABVIEW
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

//MARK: - PREVIEW

#Preview {
  OnboardingView()
}
