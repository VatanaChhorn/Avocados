//
//  SettingView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 25/01/2021.
//

import SwiftUI

struct SettingView: View {
    // MARK: - PROPERTEIS
    
    @State private var enableNotification : Bool = true
    @State private var BackgroundRefresh : Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            // MARK: - HEADER
            
            VStack (alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(radius: 8 )
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }  //: VStack
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification, label: {
                        Text("Enable Notifications")
                    })
                    
                    Toggle(isOn: $BackgroundRefresh, label: {
                        Text("Enable Background Refresh")
                    })
                    
                } //: SECTION 1
                    
                    // MARK: - SECTION #2
                    Section(header: Text("Application")) {
                        
                        ApplicationHStack(firstText: "Product", secondText: "Avocado Recipes")
                        
                        ApplicationHStack(firstText: "Compatibility", secondText: "iPhone and iPad")
                        
                        ApplicationHStack(firstText: "Developer", secondText: "Vatana Chhorn")
                        
                        ApplicationHStack(firstText: "GitHub", secondText: "Vatana Chhorn")
                        
                        ApplicationHStack(firstText: "Version", secondText: "1.0.0")
                        
                    } //: SECTION 2
                    

            }  //:  FORM
            
        }//: VStack
        .frame(maxWidth: 640)
    }
}

    // MARK: - PREVIEW
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

struct ApplicationHStack: View {
    var firstText: String
    var secondText: String
    
    var body: some View {
        HStack {
            Text(firstText) . foregroundColor(.gray)
            
            Spacer()
            
            Text(secondText)
        }
    }
}
