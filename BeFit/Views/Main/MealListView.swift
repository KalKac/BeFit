//
//  MealListView.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct MealListView: View {
    @EnvironmentObject var mealVM: MealsViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                MealList(meals: mealVM.meals)

            }
            .navigationTitle("Meals")
        }
        .navigationViewStyle(.stack)

    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
            .environmentObject(MealsViewModel())
    }
}
