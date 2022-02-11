//
//  BeFitApp.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

@main
struct BeFitApp: App {
    @StateObject var mealsViewModel = MealsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(mealsViewModel)
        }
    }
}
