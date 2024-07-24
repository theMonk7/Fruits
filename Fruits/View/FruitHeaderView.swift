//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x : 2, y: 2)
                .padding(.vertical,20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
