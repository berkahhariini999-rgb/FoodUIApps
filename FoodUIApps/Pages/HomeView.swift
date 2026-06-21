//
//  HomeView.swift
//  FoodUIApps
//
//  Created by Iqbal Alhadad on 21/06/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack (alignment: .top) {
                //scrollable content
                ScrollView {
                    VStack (spacing: 0) {
                        //category
                        //what hot
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

#Preview {
    HomeView()
}
