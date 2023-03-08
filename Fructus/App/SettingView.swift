//
//  SettingView.swift
//  Fructus
//
//  Created by Jonathan Eduardo Meriño Bolívar - Ceiba Software on 8/03/23.
//

import SwiftUI

struct SettingView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }label:{
                     SettingsLabelView(labelText: "Fructus", labelImagen: "info.circle")
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }.padding()
                            .background(
                                Color(.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                            )
                    }label: {
                        SettingsLabelView(labelText: "Customization", labelImagen: "paintbrush")
                    }
                    
                    // MARK: - SECION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Jonathan Meriño")
                        SettingsRowView(name: "Designer",  content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@jmerino012", linkDestination: "twitter.com/jmerino012")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }label: {
                        SettingsLabelView(labelText: "Application", labelImagen: "apps.iphone")
                    }
                
                }
          
                .toolbar{
                    ToolbarItem(placement:.navigationBarTrailing) {
                        Button(action: {
                            presentationMode.callAsFunction()
                        }){
                            Image(systemName: "xmark")
                        }
                    }
                }
                
                .navigationTitle("Settings")
            
                .padding()
            }
        } //: NAVIGATION
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
