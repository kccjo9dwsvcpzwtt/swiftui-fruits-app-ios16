//
//  swiftui_fruits_app_ios16App.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-21.
//

import SwiftUI

@main
struct swiftui_fruits_app_ios16App: App {
  
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
