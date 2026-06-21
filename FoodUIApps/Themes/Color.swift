//
//  Color.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import SwiftUI

extension Color {
    // hex color
    init(hex: String, opacity: Double = 1.0) {
        let hexSanitized = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = Double((rgb & 0xFF0000) >> 16 ) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8 ) / 255.0
        let blue = Double(rgb & 0x0000FF       ) / 255.0
        
        self.init (.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
    
    //primary, secondary color
    static let primaryColor = Color(hex: "#3187b5")
    static let primaryLightColor = Color(hex: "#9dd3fc")
    
    static let textFieldColor = Color(hex: "#30a4e3")
    static let starColor = Color(hex: "#e3d130")
    static let proColor = Color(hex: "#f0dc2b")
}
