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
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModal: Bool = false
    
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
              
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                
                RecipeCookingView(recipe: recipe)
                
            }  //: VStack
            .padding()
            .padding(.bottom,12 )
        }  //:  VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 8 )
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal, content: {
            RecipeDetailView_(recipe: recipe)
        })
    }
}

// MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[1])
            .previewLayout(.sizeThatFits)
    }
}
