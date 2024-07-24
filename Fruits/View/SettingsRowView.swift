//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properties
    var data: SettingsData
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(data.name).foregroundColor(.gray)
                Spacer()
                if !data.isLink {
                    Text(data.content)
                } else {
                    Link(destination: URL(string: "https://\(data.content)")!, label: {
                        Text(data.linklabel.isEmpty ? "LINK" : data.linklabel)
                        Image(systemName: "arrow.up.right.square").foregroundColor(.gray)
                    })
                    
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(data: SettingsData(name:"yoy", content: "www.moyf.com", isLink: true, linklabel: "SwiftUIMastercalss"))
}
