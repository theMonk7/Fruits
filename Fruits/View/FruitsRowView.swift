//
//  FruitsRowView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct FruitsRowView: View {
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 8) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background {
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                        
                }
                .cornerRadius(8)
                
            VStack(alignment: .leading, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            })
        }
    }
}

// MARK: - Preview
#Preview {
    FruitsRowView(fruit: fruitsData[0])
}
