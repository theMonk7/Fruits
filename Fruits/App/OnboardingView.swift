//
//  OnboardingView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    @State private var isPresented = false
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits) { fruit in
                FruitCardView(fruit: fruit)
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

// MARK: - Preview
#Preview {
    OnboardingView()
}
