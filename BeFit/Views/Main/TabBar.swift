//
//  TabBar.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct TabBar: View {
    
    var body: some View {
        
        TabView(){
            
            MealListView()
                .tabItem {
                    Label("Meal List", systemImage: "list.bullet.circle")
                      
                }
            
            NewMealView()
                .tabItem {
                    Label("Add new Meal", systemImage: "plus")
                      

                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                      

                }
            
        }        
        .onAppear {
            UITabBar.appearance().backgroundColor = .lightGray
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(MealsViewModel())
    }
}
