//
//  RecipeModel.swift
//  Avocados
//
//  Created by Vatana Chhorn on 26/01/2021.
//

import SwiftUI

// MARK: - RecipeModel

struct Recipe: Identifiable {
    var id = UUID()
    var title : String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients : [String]
    
}
