//
//  FoodCategory.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/25/23.
//

import Foundation
import SwiftUI

struct FoodCategoryModel : Identifiable {
    let id = UUID()
    let data: FoodCategory
    let color: Color
}

protocol FoodCategoryViewModelable: ObservableObject {
    
    var categories: [FoodCategoryModel] { get }
    
    //    func fetchMovieRatings()
    // Define vars or funcs for anything else your view accesses in your view model
}

class FoodCategoryViewModel : FoodCategoryViewModelable {
    
    @Published var categories = FoodCategoryModelMock.categories
}

class FoodCategoryPreviewViewModel: FoodCategoryViewModelable {
    
    @Published var categories = FoodCategoryModelMock.categories
    
    //    func fetchMovieRankings() {} // do nothing while in a Preview
}

private struct FoodCategoryModelMock {
    
    private static let grains = Array(1...50).map { FoodItem(name: "Sweet Potatoes \($0)", image: "sweet-potatoes", sensitivity: .mild) }
    
    static var categories = [
        FoodCategoryModel(data: FoodCategory(name: "Grains / Starches", foodItems: Array(grains[0...9])), color: .yellow),
        FoodCategoryModel(data: FoodCategory(name: "Vegetables", foodItems: Array(grains[10...19])), color: .green),
        FoodCategoryModel(data: FoodCategory(name: "Fruit", foodItems: Array(grains[20...29])), color: .pink),
        FoodCategoryModel(data: FoodCategory(name: "Protein", foodItems: Array(grains[30...39])), color: .cyan),
        FoodCategoryModel(data: FoodCategory(name: "Miscellaneous", foodItems: Array(grains[40...49])), color: .purple)
    ]
    
    //    private func foodItems() {
}
