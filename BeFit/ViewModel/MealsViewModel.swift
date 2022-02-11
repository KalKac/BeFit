//
//  MealsViewModel.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import Foundation


class MealsViewModel: ObservableObject{
    @Published private(set) var meals: [BeFitModel] = []
    
    init(){
        meals = BeFitModel.all
    }
    
    func addMeal(meal: BeFitModel){
        meals.append(meal)
        
    }
}
