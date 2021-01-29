//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Vatana Chhorn on 29/01/2021.
//

import SwiftUI

struct RecipeCookingView: View {
    
    var recipe : Recipe
    
    var body: some View {
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
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}