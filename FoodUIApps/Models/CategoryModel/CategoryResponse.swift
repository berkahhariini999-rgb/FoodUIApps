//
//  CategoryResponse.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import Foundation

struct CategoryResponse: Identifiable {
    var id = UUID()
    var icon: String
    var name: String
    var isBadgeDisplayed: Bool
}
