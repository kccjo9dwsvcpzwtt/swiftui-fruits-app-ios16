//
//  FruitNutrientsView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-05.
//

import SwiftUI

struct FruitNutrientsView: View {
  
  //MARK: - PROPERTIES
  
  var fruit: Fruit
  let nutrients: [String] = ["Energy", "Sugar", "Fat", "Proteine", "Vitamins", "Minerals"]
  
  //MARK: - BODY
  
  var body: some View {
    GroupBox() {
      DisclosureGroup("Nutrition value per 100g") {
        ForEach(0..<nutrients.count, id: \.self) { item in
          
          Divider().padding(.vertical, 2)
          
          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(nutrients[item])
            }
            .foregroundStyle(fruit.gradientColors[1])
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            
            Text(fruit.nutrition[item])
              .multilineTextAlignment(.trailing)
          } //: HSTACK
        } //: LOOP
      } //: DISCLOSURE
    } //: GROUP BOX
  }
}

#Preview {
  FruitNutrientsView(fruit: fruitsData[0])
    .preferredColorScheme(.dark)
    .previewLayout(.fixed(width: 375, height: 480))
    .padding()
}
