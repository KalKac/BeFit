//
//  MealView.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct MealView: View {
    var meal: BeFitModel
    
    var body: some View {
        ScrollView{
            VStack(spacing: 40){
                Spacer()
                Text("Meal name:\n  \(meal.nameOfMeal)")
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
                Divider()
                Text("kcal: \n\(meal.caloriesOfMeal)")
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)

                Divider()
                Text(String("Meal Compountents:\n \(meal.components)"))
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)


                Spacer()

            }
            .padding(.horizontal)
            
        }
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView(meal: BeFitModel.all[0])
    }
}
