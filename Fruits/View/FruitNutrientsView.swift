//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    private let nutrients: [String] = ["Energy","Sugar","Fat","Protein", "Vitamins", "Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutrition value per 100g") {
                VStack(alignment: .leading) {
                    ForEach(0..<nutrients.count, id: \.self) { item in
                        Divider()
                            .padding(.vertical,2)
                        HStack {
                            Group {
                                Image(systemName: "info.circle")
                                Text(nutrients[item])
                            }
                            .foregroundColor(fruit.gradientColors[1])
                            .bold()
                            Spacer()
                            Text(fruit.nutrition[item])
                                .multilineTextAlignment(.trailing)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
