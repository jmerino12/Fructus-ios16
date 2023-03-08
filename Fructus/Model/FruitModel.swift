//
//  FruitModel.swift
//  Fructus
//
//  Created by Jonathan Eduardo Meriño Bolívar - Ceiba Software on 8/03/23.
//

import SwiftUI


struct Fruit: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors : [Color]
    var description: String
    var nutrition: [String]
}
