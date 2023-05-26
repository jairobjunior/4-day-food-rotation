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
    
    private static let grains = [
        FoodItem(name: "Buck Wheat", image: "buckwheat", sensitivity: .acceptable),
        FoodItem(name: "Corn*", image: "corn", sensitivity: .mild),
        FoodItem(name: "Millet", image: "millet", sensitivity: .acceptable),
        FoodItem(name: "Oats (Gluten Free)*", image: "oats", sensitivity: .mild),
        FoodItem(name: "Quinoa*", image: "quinoa", sensitivity: .mild),
        FoodItem(name: "Rice", image: "rice", sensitivity: .acceptable),
        FoodItem(name: "Sorghum", image: "sorghum", sensitivity: .acceptable),
        FoodItem(name: "Sweet Potato*", image: "sweet-potato", sensitivity: .mild),
        FoodItem(name: "Tapioca", image: "tapioca", sensitivity: .acceptable),
        FoodItem(name: "Wild Rice*", image: "wild-rice", sensitivity: .mild),
    ]
    
    private static let vegetables = [
        FoodItem(name: "Black Eyed Pea", image: "black-eyed-pea", sensitivity: .acceptable),
        FoodItem(name: "Butternut Squash", image: "butternut-squash", sensitivity: .acceptable),
        FoodItem(name: "Carrot", image: "carrot", sensitivity: .acceptable),
        FoodItem(name: "Celery", image: "celery", sensitivity: .acceptable),
        FoodItem(name: "Chickpea", image: "chickpea", sensitivity: .acceptable),
        FoodItem(name: "Egg Plant", image: "eggplant", sensitivity: .acceptable),
        FoodItem(name: "Fava Bean", image: "fava-bean", sensitivity: .acceptable),
        FoodItem(name: "Kale", image: "kale", sensitivity: .acceptable),
        FoodItem(name: "Leaf Lettures", image: "leaf-lettures", sensitivity: .acceptable),
        FoodItem(name: "Mustard Green", image: "mustard-green", sensitivity: .acceptable),
        FoodItem(name: "Rutabaga", image: "rutabaga", sensitivity: .acceptable),
        FoodItem(name: "Wakame Seaweed", image: "wakame-seaweed", sensitivity: .acceptable),
        FoodItem(name: "Yellow Pea", image: "yellow-pea", sensitivity: .acceptable),
        FoodItem(name: "Yellow Squash*", image: "yellow-squash", sensitivity: .mild),
    ]
    
    private static let foods = Array(1...50).map {
        FoodItem(name: "Sweet Potatoes \($0)", image: "sweet-potatoes", sensitivity: .mild)
    }
    
    static var categories = [
        FoodCategoryModel(data: FoodCategory(name: "Grains / Starches", foodItems: grains), color: .yellow),
        FoodCategoryModel(data: FoodCategory(name: "Vegetables", foodItems: vegetables), color: .green),
        FoodCategoryModel(data: FoodCategory(name: "Fruit", foodItems: Array(foods[20...29])), color: .pink),
        FoodCategoryModel(data: FoodCategory(name: "Protein", foodItems: Array(foods[30...39])), color: .cyan),
        FoodCategoryModel(data: FoodCategory(name: "Miscellaneous", foodItems: Array(foods[40...49])), color: .purple)
    ]
    
    //    private func foodItems() {
}
