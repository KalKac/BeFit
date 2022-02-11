//
//  SettingsView.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Text("settings")
                
                .navigationTitle("Settings")

        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
