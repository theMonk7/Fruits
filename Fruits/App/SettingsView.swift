//
//  SettingsView.swift
//  Fruits
//
//  Created by Utkarsh Raj on 24/07/24.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding = false
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                        , content: {
                            Divider()
                                .padding(.vertical, 4)
                            HStack(alignment: .center,spacing: 10) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 9))
                                Text("Most fruits are naturally low in fat, soduim and calories. None have cholesterol. Fruits are sources of mamy essential nurtrients, including potassium, dietary fiber, vitamins and minerals")
                            }
                        })
                    
                    
                    // MARK: Section 2
                    
                    
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"),
                        content: {
                            Divider().padding(.vertical, 4)
                            Text("If you wish, you can restart the application by toggling this switch and you will see the onboarding screen again")
                                .padding(.vertical,8)
                                .frame(minHeight: 60)
                                .layoutPriority(1) // this makes sure this element gets most space and others shrink
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Restarted".uppercased()).bold().foregroundColor(.green)
                                } else {
                                    Text("Restart".uppercased()).bold().foregroundColor(.secondary)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                            )
                    })
                    
                    // MARK: Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"),
                        content: {
                            SettingsRowView(data: SettingsData(name: "Developer", content: "John Raj"))
                            SettingsRowView(data: SettingsData(name: "Website", content: "www.urbancompany.com", isLink: true, linklabel: "YUSYUS"))
                    })
                    
                }//: VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .shadow(color: .black.opacity(0.15), radius: 3, x: 2, y: 2)
                        })
                    }
                    
                })
                .padding()
                
            } //: ScrollView
            
        } //: NavigationStack
    }
}

#Preview {
    SettingsView()
}
