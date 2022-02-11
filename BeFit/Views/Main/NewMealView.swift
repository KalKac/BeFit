//
//  NewMealView.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct NewMealView: View {
    @State private var showAddMeal = false
    var body: some View {
        NavigationView{
            Button("new meal"){
                showAddMeal.toggle()
            }
                
                .navigationTitle("NewMeal View")

        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddMeal){
            AddNewMealView()
        }

    }
}

struct NewMealView_Previews: PreviewProvider {
    static var previews: some View {
        NewMealView()
    }
}
