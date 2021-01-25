//
//  DishesView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 25/01/2021.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack (alignment: .center , spacing: 4) {
            // MARK: - 1st Column
            VStack (alignment: .leading, spacing: 4) {
                FirstColHStack(image: "icon-toasts", text: "Toasts")
                Divider()
                FirstColHStack(image: "icon-tacos", text: "Tacos")
                Divider()
                FirstColHStack(image: "icon-salads", text: "Salad")
                Divider()
                FirstColHStack(image: "icon-halfavo", text: "Spreads")
            }  //: VStack
            
            // MARK: - 2nd Column
            
            VStack (alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                
                
                HStack {
                    Divider()
                }
            }  //:  VStack
            
            // MARK: - 3rd Column
            VStack (alignment: .leading, spacing: 4) {
                SecondColHStack(image: "icon-guacamole", text: "Guacamole")
                Divider()
                SecondColHStack(image: "icon-sandwiches", text: "Sandwiches")
                Divider()
                SecondColHStack(image: "icon-soup", text: "Soup")
                Divider()
                SecondColHStack(image: "icon-smoothies", text: "Smoothies")
            }  //: VStack
        
        } //:  HStack
        .font(.system(.callout
                      , design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

// MARK: - PREVIEW
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

// MARK: - MODIFIER
struct IconModifer : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

// MARK: - SUBVIEWS
struct FirstColHStack: View {
    //:  PROPERTIES
    var image: String
    var text: String
    //: BODY
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .modifier(IconModifer())
            Spacer()
            Text(text)
        }  //:  HStack
    }
}

struct SecondColHStack: View {
    //:  PROPERTIES
    var image: String
    var text: String
    //: BODY
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Image(image)
                .resizable()
                .modifier(IconModifer())
        }
    }
}
