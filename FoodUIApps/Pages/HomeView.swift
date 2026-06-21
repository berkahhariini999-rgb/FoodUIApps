//
//  HomeView.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack (alignment: .top) {
                //scrollable content
                ScrollView {
                    VStack (spacing: 0) {
                        //category
                        CategoryView()
                        //what hot
                        WhatHotView()
                        //redeem saved
                        //saved 30%
                        //most love supermarket
                    }
                    .padding(.top, 190)
                    .padding(.bottom, 60)
                }
                
                //header
                HeaderView()
            }
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
        }
    }
}

struct HeaderView:View {
    var body: some View {
        ZStack {
            //wave shape
            Color.primaryColor
                .frame(height: 190)
                .clipShape(JaggedWaveShape())
            //content
            VStack (spacing:10){
                //text
                HStack (spacing:10){
                    Text("Deliver to Home")
                        .font(.headline)
                        .foregroundStyle(.white)
                    Image(systemName: "chevron.down")
                        .font(.footnote)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .padding(.top, 2)
                    Spacer()
                }
                //search field
                HStack {
                    //icon
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.black.opacity(0.4))
                    //textfield
                    TextField("Search food,groceries & more", text: .constant(""))
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .frame(height:45)
                .background(.white)
                .clipShape(Capsule())
            }
            .padding()
        }
    }
}

struct CategoryView:View {
    var categoriesDatas:[CategoryResponse] = categoriesData
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            LazyHStack (spacing:12) {
                ForEach(categoriesDatas) {
                    category in
                    CategoryRowView(category: category)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CategoryRowView:View {
    var category:CategoryResponse
    var body: some View {
        VStack(spacing:-5) {
            //image
            //badge 50%
            ZStack (alignment: .top) {
                VStack {
                    Image(category.icon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                }
                .frame(width: 75,height: 75)
                .background(Color.primaryLightColor)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                //badge
                if category.isBadgeDisplayed {
                    Text("Up to 50%")
                        .padding(.horizontal, 4)
                        .font(.caption2)
                        .fontWeight(.semibold)
                        .background(Color.primaryColor)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                        .offset(x:0, y:-10)
                }
            }
            .frame(height:100)
            
            //name
            Text(category.name)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 75)
                .lineLimit(2)
        }
    }
}

struct WhatHotView:View {
    var restaurantDatas:[RestaurantResponse] = restaurantsSectionData
    var body:some View {
        ZStack (alignment:.topLeading) {
            //share wave
            Color.primaryLightColor
                .frame(height:380)
                .clipShape(JaggedWaveShape())
            //content
            VStack (spacing:12){
                //title
                Text("Explore what's hot")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 18)
                //list
                ScrollView (.horizontal, showsIndicators: false) {
                    LazyHStack (spacing:12) {
                        ForEach(restaurantDatas) {
                            restaurant in
                            RestaurantRowView(restaurant: restaurant)
                        }
                    }
                    .padding(.horizontal)
                }
            }
           
          
        }
        .padding(.vertical, 30)
       
        
    }
}

struct RestaurantRowView:View {
    var restaurant:RestaurantResponse
    var body:some View {
        VStack {
            // image menu, profile image, favourite icon
            ZStack (alignment: .topLeading) {
                KFImage(URL(string: restaurant.menuImageUrlFeatured))
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
                //image, favourite
                HStack {
                    //profile image
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .frame(width: 36, height: 36)
                        KFImage(URL(string: restaurant.imageUrl))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 32 , height: 32)
                            .clipShape(Circle())
                    }
                    Spacer()
                    //profile image
                    
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    HomeView()
}
