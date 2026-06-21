//
//  RestaurantData.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import Foundation

let restaurantsSectionData: [RestaurantResponse] = [
    RestaurantResponse (
        name: "Shawarma King",
        imageUrl: "https://images.pexels.com/photos/7426870/pexels-photo-7426870.jpeg",
        coverImageUrl: "https://images.pexels.com/photos/36879216/pexels-photo-36879216.jpeg",
        menuNameFeatured: "Chicken Shawarma Wrap",
        menuImageUrlFeatured: "https://images.pexels.com/photos/18177331/pexels-photo-18177331.jpeg",
        foodType: "Lebanese, Shawarma",
        totalRating: "12,540",
        rating: "4.5",
        duration: "35 mins",
        deliveryFee: "52.50",
        isFavorite: true,
        menuItems: [
            MenuResponse(name: "Chicken Shawarma Wrap", imageUrl:
                        "https://images.pexels.com/photos/5175629/pexels-photo-5175629.jpeg", price: "$5")
            
        ]
        
    )
]
