//
//  FruitDetailView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-03.
//

import SwiftUI

struct FruitDetailView: View {
  
  //MARK: - PROPERTIES
  
  var fruit: Fruit
  
  //MARK: - BODY
  
  var body: some View {
    NavigationStack {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          
          //MARK: - HEADER
          
          FruitHeaderView(fruit: fruit)
          
          VStack(alignment: .leading, spacing: 20) {
            
            //MARK: - TITLE
            
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundStyle(fruit.gradientColors[1])
            
            //MARK: - HEADLINE
            
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            //MARK: - NUTRIENTS
            
            FruitNutrientsView(fruit: fruit)
            
            //MARK: - SUBHEADING
            
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundStyle(fruit.gradientColors[1])
            
            //MARK: - DESCRIPTION
            
            Text(fruit.description)
              .multilineTextAlignment(.leading)
            
            //MARK: - LINK
            
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
            
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        } //: VSTACK
        
        /*
         .navigationBarTitle(fruit.title, displayMode: .inline)
         .navigationBarHidden(true)
         */
        
      } //: SCROLL VIEW
      .edgesIgnoringSafeArea(.top)
    } //: NAVIGATION STACK
  }
}

//MARK: - PREVIEW

#Preview {
  FruitDetailView(fruit: fruitsData[0])
}
