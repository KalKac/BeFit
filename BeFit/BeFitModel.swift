//
//  BeFitModel.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import Foundation


struct BeFitModel: Identifiable{
    let id = UUID()
    let nameOfMeal: String
    let caloriesOfMeal: Int
    let components: String
    let datePublished: String
}




extension BeFitModel{
    static let all: [BeFitModel] = [
        BeFitModel(nameOfMeal: "Meal1", caloriesOfMeal: 100, components: "Kapusta", datePublished: "1"),
        BeFitModel(nameOfMeal: "Meal2", caloriesOfMeal: 1000, components: "Kapusta", datePublished: "2"),
        BeFitModel(nameOfMeal: "Meal3", caloriesOfMeal: 2000, components: "Kapusta", datePublished: "3"),

    
    ]
    
}
