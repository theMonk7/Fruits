//
//  SourceLinkview.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct SourceLinkview: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("wikipedia",destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
            
        }
    }
}

#Preview {
    SourceLinkview()
}
