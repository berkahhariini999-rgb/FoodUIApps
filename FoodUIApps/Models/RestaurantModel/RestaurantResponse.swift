//
//  RestaurantResponse.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import Foundation

struct RestaurantResponse: Identifiable {
    var id = UUID()
    var name: String
    var imageUrl: String
    var coverImageUrl: String
    var menuNameFeatured: String
    var menuImageUrlFeatured: String
    var foodType: String
    var totalRating: String
    var rating: String
    var duration: String
    var deliveryFee: String
    var isFavorite: Bool = false
    var menuItems: [MenuResponse]
}
