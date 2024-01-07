//
//  SourceLinkView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-05.
//

import SwiftUI

struct SourceLinkView: View {
  
  //MARK: - BODY
  
  var body: some View {
    GroupBox() {
      HStack {
        Text("Content source")
        Spacer()
        Link("Wikipedia", destination: URL(string: "http://wikipedia.com")!)
        Image(systemName: "arrow.up.right.square")
      } //: HSTACK
      .font(.footnote)
    } //: GROUP BOX
  }
}

//MARK: - PREVIEW

#Preview {
  SourceLinkView()
    .previewLayout(.sizeThatFits)
    .padding()
}
