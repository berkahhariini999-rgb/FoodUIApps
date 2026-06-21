//
//  MenuResponse.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import Foundation

struct MenuResponse:Identifiable {
    var id = UUID()
    var name: String
    var imageUrl: String
    var price: String
}
