//
//  FoodItem.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/25/23.
//

import Foundation

enum Sensitivity {
    case severe
    case moderate
    case mild
    case acceptable
}

struct FoodItem : Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let sensitivity: Sensitivity
}
