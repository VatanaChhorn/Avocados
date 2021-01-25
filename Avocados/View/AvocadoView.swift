//
//  AvocadoView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 25/01/2021.
//

import SwiftUI

struct AvocadoView: View {
    // MARK: - PROPERTIEs
    
    @State private var pulsiveAnimation : Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulsiveAnimation ? 1 : 0.9)
                .opacity(pulsiveAnimation ? 1 : 0.8 )
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                
            VStack {
                Text("Avocado".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }  //: VStack
            .padding()
            
            Spacer()
        }  //:  VStack
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsiveAnimation.toggle()
        })
        
    }
}


// MARK: - PREVIEW
struct AvocadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoView()
            //: Change to dark mode
            .environment(\.colorScheme, .dark)
    }
}
