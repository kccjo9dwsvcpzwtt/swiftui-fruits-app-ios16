//
//  StartButtonView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-22.
//

import SwiftUI

struct StartButtonView: View {
  
  //MARK: - PROPERTIES
  
  //MARK: - CONTENT
  
  var body: some View {
    Button(action: {
      print("Exit the onboarding")
    }, label: {
      HStack(spacing: 8) {
        Text("Start")
        
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      } //: HSTACK
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(
        Capsule().strokeBorder(Color(.white), lineWidth: 1.25)
      )
    }) //: BUTTON
    .accentColor(.white)
  }
}

//MARK: - PREVIEW

#Preview {
  StartButtonView()
    .previewLayout(.sizeThatFits)
}
