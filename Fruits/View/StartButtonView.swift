//
//  StartButtonView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct StartButtonView: View {
    var color: Color
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        // MARK: - Body
        
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical, 10)
            
        } //: Button
        .accentColor(color)
        .background(alignment: .center) {
            Capsule()
                .strokeBorder(color, style: StrokeStyle(lineWidth: 1.25))
        }

    }
}
// MARK: - Preview
#Preview {
    StartButtonView(color: .black)
}
