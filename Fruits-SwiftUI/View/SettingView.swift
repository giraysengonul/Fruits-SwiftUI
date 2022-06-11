//
//  SettingView.swift
//  Fruits-SwiftUI
//
//  Created by hakkı can şengönül on 11.06.2022.
//

import SwiftUI

struct SettingView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                //Group-1
                VStack(spacing:20) {
                    GroupBox {
                        Divider().padding(.vertical,4)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80).cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    }
                    //Group-2
                    
                    GroupBox {
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }.padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        
                        
                    } label: {
                        SettingLabelView(labelText: "Costomization", labelImage: "paintbrush")
                        Divider().padding(.vertical,4)
                    }
                    
                    
                    
                    //Group-3
                    GroupBox {
                        
                        SettingsRowView(name: "Developer", content: "Hakkı Can ŞENGÖNÜL")
                        SettingsRowView(name: "Designer", content: "Hakkı Can ŞENGÖNÜL")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "Personal Wesite", linkDestination: "hakkicansengonul.github.io")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    } label: {
                        SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                    
                    
                    
                    
                }//VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                        
                    }
                })
                
                .padding()
            }//Scroll
        }//Navigationview
    }
}


// MARK: - PREVIEW
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView().preferredColorScheme(.dark)
    }
}
