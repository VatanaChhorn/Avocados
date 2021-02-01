//
//  RipeningModel.swift
//  Avocados
//
//  Created by Vatana Chhorn on 01/02/2021.
//

import SwiftUI

struct Ripening : Identifiable {
    var id = UUID()
    var image : String
    var stage: String
    var title: String
    var description: String
    var ripeness : String
    var instruction: String
}
