//
//  SettingsLabelView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-05.
//

import SwiftUI

struct SettingsLabelView: View {
  
  //MARK: - PROPERTIES
  
  var labelText: String
  var labelImage: String
  
  //MARK: - BODY
  
  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    } //: HSTACK
  }
}

//MARK: - PREVIEW

#Preview {
  SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
    .preferredColorScheme(.dark)
    .previewLayout(.sizeThatFits)
    .padding()
}
