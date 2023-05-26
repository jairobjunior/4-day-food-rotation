//
//  FoodItemView.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/23/23.
//

import SwiftUI

struct Badge: View {
    
    let count: Int
    let sensitivity: Sensitivity
    
    private let colorSensitivity: [Sensitivity:Color] = [.acceptable:.green, .mild:.yellow]
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.clear
            
            Text(String(count))
                .font(.system(size: 20))
                .padding(10)
                .background(colorSensitivity[sensitivity]?.opacity(0.6))
                .clipShape(Circle())
            // custom positioning in the top-right corner
                .alignmentGuide(.top) { $0[.bottom] }
                .alignmentGuide(.trailing) { $0[.trailing] - $0.width * 0.25 }
        }
    }
}

struct FoodItemButtonStyle: ButtonStyle {
    
    var isSelected: Bool = false
    var widgetColor: Color = .green
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.black)
            .background(isSelected ? widgetColor : Color.clear)
            .cornerRadius(10.0)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(widgetColor, lineWidth: 2)
            )
    }
    
}

struct FoodItemView: View {
    
    @State var isSelected: Bool = false
    
    let widgetColor: Color
    let foodItem: FoodItem
    
    var body: some View {
        Button(action: {
            self.isSelected.toggle()
        }) {
            VStack(alignment: .center, spacing: 0) {
                Image(foodItem.image)
                    .resizable()
                    .frame(width: 155, height: 155)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .overlay(Badge(count: 3, sensitivity: foodItem.sensitivity))
                
                Text(foodItem.name)
                    .multilineTextAlignment(.center)
                    .frame(width: 168, height: 70, alignment: .center)
                    .font(.system(size: 26, weight: .light))
//                    .border(.black)
            }
            .padding(.top, 20)
            .frame(width: 170, height: 230)
            //            .padding([.top, .bottom], 15)
        }
        //        .padding()
        .buttonStyle(FoodItemButtonStyle(isSelected: self.isSelected, widgetColor: widgetColor))
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            FoodItemView(
                widgetColor: .green,
                foodItem:
                    FoodItem(name: "Buck Wheat", image: "buckwheat", sensitivity: .acceptable)
            )
            FoodItemView(
                widgetColor: .green,
                foodItem:
                    FoodItem(name: "Sweet Potato (Gluten)", image: "buckwheat", sensitivity: .acceptable)
            )
        }
        
    }
}
