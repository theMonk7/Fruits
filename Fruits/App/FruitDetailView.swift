//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // Headling
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        // Subheading
                        Text("Learn more about \(fruit.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // Link
                        SourceLinkview()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
//                .navigationBarHidden(true)
                
            }
            .ignoresSafeArea(edges: Edge.Set.top)
        } //: Navigation
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
