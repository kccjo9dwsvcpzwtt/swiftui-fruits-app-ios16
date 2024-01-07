//
//  SettingsView.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-05.
//

import SwiftUI

struct SettingsView: View {
  
  //MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  
  //MARK: - BODY
  
  var body: some View {
    NavigationStack {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          
          //MARK: - SECTION 1
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
            /*
              HStack {
                Text("Fruits".uppercased()).fontWeight(.bold)
                Spacer()
                Image(systemName: "info.circle")
              } //: HSTACK
            */
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruits, are naturally low in fat, sodium and calories. None have colesterol. Fruits, are sources of many essentials nutrients, including pottasium, dietary fiber, vitamins and much more.")
                .font(.footnote)
            }
          } //: GROUP BOX
          
          //MARK: - SECTION 2
          
          
          
          //MARK: - SECTION 3
          
          
        } //: VSTACK
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            } //: BUTTON
        )
        .padding()
      } //: SCROLL VIEW
    } //: NAVIGATION STACK
  }
}

//MARK: - PREVIEW

#Preview {
  SettingsView()
}
