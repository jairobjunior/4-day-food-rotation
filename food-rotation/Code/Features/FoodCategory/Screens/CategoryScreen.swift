//
//  CategoryHome.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/23/23.
//

import SwiftUI

struct CategoryHome: View {
    
    @StateObject var viewModel = FoodCategoryViewModel()
    
    var body: some View {
        CategoryScreenInternal(viewModel: viewModel)
    }
}

private struct CategoryScreenInternal<ViewModel: FoodCategoryViewModelable>: View {
    
    @ObservedObject var viewModel: ViewModel
    
    private let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 200, maximum: 250)),
    ]
    
    func textHeader(text: String, color: Color) -> some View {
        return Text(text)
            .font(.largeTitle)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding(16)
            .background(.white)
            .foregroundColor(color)
    }
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.categories) { category in
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 16,
                    pinnedViews: [.sectionHeaders, .sectionFooters]
                ) {
                    Section(header: textHeader(text: category.data.name, color: category.color)
                    ) {
                        ForEach(category.data.foodItems) { foodItem in
                            FoodItemView(
                                widgetColor: category.color.opacity(0.7),
                                foodItem: foodItem
                            )
                        }
                    }
                    .padding(.bottom, 16)
                }
                .background(category.color.opacity(0.1))
                .overlay(Divider()
                    .frame(maxWidth: .infinity, maxHeight:2)
                    .background(category.color) , alignment: .bottom)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScreenInternal(viewModel: FoodCategoryPreviewViewModel())
    }
}
