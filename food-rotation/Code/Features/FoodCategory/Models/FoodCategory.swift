//
//  FoodCategory.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/25/23.
//

import Foundation

struct FoodCategory: Identifiable {
    let id = UUID()
    let name: String
    let foodItems: [FoodItem]
}
