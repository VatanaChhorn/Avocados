//
//  HeaderModel.swift
//  Avocados
//
//  Created by Vatana Chhorn on 25/01/2021.
//

import SwiftUI

// MARK: - MODEL

struct Header : Identifiable {
    var id = UUID()
    var image : String
    var headline: String
    var subHeadline: String 
}
