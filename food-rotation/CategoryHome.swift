//
//  CategoryHome.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/23/23.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        FoodRowView()
//        NavigationView {
//            List {
//                //                                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
//                Text("key")
//                Text("key")
//                Text("key")
//                //                                }
//                    
//            }
//            .navigationViewStyle(DoubleColumnNavigationViewStyle())
////            .listRowInsets(EdgeInsets())
//            .navigationTitle("Featured")
//        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
