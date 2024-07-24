//
//  FruitCardView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    let fruit: Fruit
    
    
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                // Fruit : Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.7), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 2, y: 2)
                // Fruit: Headline
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                    .lineSpacing(8)
                
                // Button: Start
                StartButtonView(color: .white) 
            } //: VStack
        } //: ZStack
        .onAppear{
            withAnimation(Animation.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity,alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview
#Preview {
    FruitCardView(fruit: fruitsData[0])
}
