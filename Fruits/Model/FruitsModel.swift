//
//  FruitsModel.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
