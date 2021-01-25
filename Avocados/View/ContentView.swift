//
//  ContentView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 19/01/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var headers : [Header] = headersData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing  : 20 ) {
                // MARK: - HEADER
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (alignment: .center, spacing : 0 ) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }  //: LOOPs
                    }  //:  HStack
                }  //:  ScrollView
                
                // MARK: - Dishes View
                
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                 
                // MARK: - FOOTER
                VStack (alignment: .center, spacing  : 20 ){
                    Text("All About Avocado")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocado but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }  //:  VStack
        }  //:  ScrollView
        .ignoresSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

// MARK: - Modifier

struct TitleModifier: ViewModifier {
    func body(content: Content ) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
