//
//  ContentView.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        TabBar()
                
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MealsViewModel())
    }
}
