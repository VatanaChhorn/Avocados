//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 26/01/2021.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    
    let recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment: .leading, spacing: 12 ) {
            // Card Image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(radius: 2)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }  //: VStack
                    }  //: HStack
                )
            
            VStack (alignment: .leading, spacing: 12) {
                // TITLE
                
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HEADLINE
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // RATING
                
                HStack (alignment: .center, spacing: 5) {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    }
                }  //:  HStack
                
                
                // COOKING
                
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    } //: HStack
                    .frame(minWidth: 80)
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    } //: HStack
                    .frame(minWidth: 80)
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }  //: HStack
                    .frame(minWidth: 80)
                }  //: HStack
                .font(.footnote)
                .foregroundColor(.gray)
                
                
            }  //: VStack
            .padding()
            .padding(.bottom,12 )
        }  //:  VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 8 )
    }
}

// MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[1])
            .previewLayout(.sizeThatFits)
    }
}
