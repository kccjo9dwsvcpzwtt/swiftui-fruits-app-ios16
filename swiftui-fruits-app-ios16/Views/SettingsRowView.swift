//
//  SettingsRowView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-07.
//

import SwiftUI

struct SettingsRowView: View {
  
  //MARK: - PROPERTIES
  
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  //MARK: - BODY
  
  var body: some View {
    VStack {
      
      Divider().padding(.vertical, 4)
      
      HStack {
        Text(name)
          .foregroundStyle(.gray)
        Spacer()
        if (content != nil) {
          Text(content!)
        } else if (linkLabel != nil && linkDestination != nil) {
          Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
          Image(systemName: "arrow.up.right.square")
            .foregroundStyle(.pink)
        } else {
          EmptyView()
        }
      } //: HSTACK
    } //: VSTACK
  }
}

//MARK: - PREVIEW

#Preview {
  SettingsRowView(name: "Developer", content: "Stanislav Ponomarenko")
    .previewLayout(.fixed(width: 375, height: 60))
    .padding()
}
