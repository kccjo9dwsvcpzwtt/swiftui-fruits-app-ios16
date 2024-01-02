//
//  FruitCardView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-22.
//

import SwiftUI

struct FruitCardView: View {
  
  //MARK: - PROPERTIES
  
  var fruit: Fruit
  
  @State private var isAnimating: Bool = false
  
  //MARK: - CONTENT
  
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        
        //MARK: - IMAGE
        
        Image(fruit.image)
          .resizable()
          .scaledToFit()
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1.0 : 0.6)
        
        //MARK: - TITLE
        
        Text(fruit.title)
          .foregroundStyle(.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
        
        //MARK: - HEADLINE
        
        Text(fruit.headline)
          .foregroundStyle(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        
        //MARK: - BUTTON (START)
        
        StartButtonView()
        
      } //: VSTACK
    } //: ZSTACK
    .onAppear(
      perform: {
        withAnimation(.easeOut(duration: 0.5), {
          isAnimating = true
        })
      }
    )
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
  }
}

//MARK: - PREVIEW

#Preview {
  FruitCardView(fruit: fruitsData[1])
    .previewLayout(.fixed(width: 320, height: 640))
}
