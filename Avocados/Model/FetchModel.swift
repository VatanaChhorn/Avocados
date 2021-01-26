//
//  FetchModel.swift
//  Avocados
//
//  Created by Vatana Chhorn on 26/01/2021.
//

import SwiftUI

// MARK: - FETCH DATA MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
