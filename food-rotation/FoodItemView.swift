//
//  FoodItemView.swift
//  food-rotation
//
//  Created by Jairo Barros on 5/23/23.
//

import SwiftUI

struct FoodItemButtonStyle: ButtonStyle {
    
    var isSelected: Bool = false
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.black)
            .background(isSelected ? Color.green : Color.clear)
            .cornerRadius(10.0)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.green, lineWidth: 2)
            )
    }
    
}

struct FoodItemView: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        Button(action: {
            self.isSelected.toggle()
        }) {
            VStack(alignment: .center) {
                Image("buckwheat")
                    .resizable()
                    .frame(width: 155, height: 155)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                Text("Black Eyed Pea")
                    .multilineTextAlignment(.center)
                    .frame(width: 168, alignment: .center)
                    .font(.system(size: 26, weight: .light))
            }
            .padding([.top, .bottom], 15)
        }        
//        .padding()
        .buttonStyle(FoodItemButtonStyle(isSelected: self.isSelected))
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView()
    }
    
}
