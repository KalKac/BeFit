//
//  MealList.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct MealList: View {
    var meals: [BeFitModel]
    
    var body: some View {
        VStack{
            HStack {
                Text("\(meals.count) \(meals.count > 1 ? "meals" : "meal")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(meals){ meal in
                    NavigationLink(destination: MealView(meal: meal)) {
                        MealCard(meal: meal)
                    }
                }
            }
            .padding(.top)
            
        }
        .padding(.horizontal)
    }
}

struct MealList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            MealList(meals: BeFitModel.all)
        }
        
    }
}
