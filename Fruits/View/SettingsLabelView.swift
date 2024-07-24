//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - Properties
    var labelText: String
    var labelImage: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .bold()
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
}
