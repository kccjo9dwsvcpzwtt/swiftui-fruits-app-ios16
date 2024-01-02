//
//  FruitModel.swift
//  swiftui-fruits-app-ios16
//
//  Created by Stanislav Ponomarenko on 2023-12-29.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
  var id = UUID() //: Random genegated Universaly Unique ID
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
