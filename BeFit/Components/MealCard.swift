//
//  MealCard.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct MealCard: View {
    var meal: BeFitModel
    
    var body: some View {
        VStack{
            Spacer()
            Text("Meal name: \(meal.nameOfMeal)")
                .fontWeight(.semibold)
                .padding(.horizontal)
                .lineLimit(3)
            Divider()
            Text("kcal: \(meal.caloriesOfMeal)")
                .fontWeight(.semibold)
                .padding(.horizontal)
                .lineLimit(3)

            Spacer()

        }
        .foregroundColor(.black)
        .multilineTextAlignment(.center)
        .frame(width: 160, height: 200, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [.green,.cyan,.blue]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct MealCard_Previews: PreviewProvider {
    static var previews: some View {
        MealCard(meal: BeFitModel.all[0])
    }
}
