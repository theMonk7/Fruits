//
//  ContentView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 23/07/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isSettingShowing = false
    var fruits: [Fruit] = fruitsData
    
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            List(fruits.shuffled(), id:\.id) { fruit in
                NavigationLink {
                    FruitDetailView(fruit: fruit)
                } label: {
                    FruitsRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }

                
            }
            .navigationTitle("Fruits")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isSettingShowing.toggle()
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isSettingShowing, content: {
                        SettingsView()
                    })
                }
            })
            
        }
    }
}

#Preview {
    ContentView()
}
