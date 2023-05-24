//
//  FoodRowView.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/23/23.
//

import SwiftUI

struct FoodRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Grains / Starches")
                .font(.title)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
//                    ForEach(items) { landmark in
//                        CategoryItem(landmark: landmark)
                    FoodItemView()
                    FoodItemView()
                    FoodItemView()
                    FoodItemView()
                    FoodItemView()
                    FoodItemView()
                    FoodItemView()
                    FoodItemView()
                    FoodItemView()
                        .padding(.trailing, 15)
//                    }
                }
                .padding()
            }
        }
    }
}

struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        FoodRowView()
    }
}
