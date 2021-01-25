//
//  AppView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 25/01/2021.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadoView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("RipeningStages")
                }
            SettingView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("SettingView")
                }
        }  //: TabView
        .edgesIgnoringSafeArea(.all)
        .accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
