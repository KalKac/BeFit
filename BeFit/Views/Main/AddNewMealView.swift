//
//  AddNewMealView.swift
//  BeFit
//
//  Created by Kacper Kalicki on 10/02/2022.
//

import SwiftUI

struct AddNewMealView: View {
    @EnvironmentObject var mealVM: MealsViewModel
    
    @State private var name: String = ""
    @State private var Kcal: Int = 0
    @State private var contains: String = ""
    @State private var navigateToMeal = false
    
    @State private var kcalOFIgredient: Int? = nil
    @State private var nameOFIgredient: String = ""
    
    @State private var nameOFIgredients = [String]()
    @State private var kcalOFIgredients = [String]()

    @FocusState private var isFocused: Bool
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            
            VStack {
                Form{
                    Section(header: Text("Name")) {
                        TextField("Meal name", text: $name)
                        
                    }
                    Section(header: Text("Total Kcal")) {
                        TextField("Kcal", value: $Kcal, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                        
                    }
                    Section(header: Text("Enter your ingridnet")) {
                        HStack{
                            TextField("Name", text: $nameOFIgredient)
                                .focused($isFocused)
                            Divider()
                            TextField("Kcal:", value: $kcalOFIgredient, formatter: NumberFormatter())
                                .focused($isFocused)
                                .keyboardType(.numberPad)
                            Spacer()
                            Divider()
                            Button{
                                addRow()
      
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .scaleEffect(1.5)
              
                            }
                        }
                        
                    }
                    Section(header: Text("Ingridients")) {
                        VStack(alignment: .trailing){
                                ForEach(nameOFIgredients, id: \.self){ ingridient in
                                    Text(ingridient)
                                }
                        }
                    }
                    
                    
                    
                    
                }
                .toolbar(content: {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button {
                            isFocused.toggle()
                        } label: {
                            Text("Done")
                        }

                    }
                })
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Label("Cancel", systemImage: "xmark")
                                .labelsHidden()
                        }
                        
                    }
                    ToolbarItem {
                        NavigationLink(isActive: $navigateToMeal) {
                            MealView(meal: mealVM.meals.sorted{ $0.datePublished > $1.datePublished }[1])
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            Button {
                                saveMeal()
                                navigateToMeal.toggle()
                            } label: {
                                Label("Done", systemImage: "checkmark")
                                    .labelsHidden()
                            }
                            
                        }
                        .disabled(name.isEmpty && Kcal >= 0)
                        
                        
                    }
                    
                    
                })
                
                .navigationTitle("Add New Meal")
                .navigationBarTitleDisplayMode(.inline)
            }
            
            
        }
        .navigationViewStyle(.stack)
    }
    
    func addRow(){
        var answer = nameOFIgredient.trimmingCharacters(in: .whitespacesAndNewlines)
        let kcalOfMeal = kcalOFIgredient ?? 0
        guard answer.count > 0 else { return }
        guard kcalOfMeal >= 0 else{ return }
        answer += "           \(kcalOfMeal)"
        Kcal += kcalOfMeal
        nameOFIgredients.insert(answer, at: 0)
        
        kcalOFIgredient = nil
        nameOFIgredient = ""

    }
    
}

struct AddNewMealView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewMealView()
            .environmentObject(MealsViewModel())
    }
}




extension AddNewMealView{
    private func saveMeal(){
        
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd-hh-mm-ss"
        
        
        let datePublished = dateFormatter.string(from: now)
        let components = nameOFIgredients.joined()
        
        print(datePublished)
        let meal = BeFitModel(nameOfMeal: name, caloriesOfMeal: Kcal, components: components, datePublished: datePublished)
        mealVM.addMeal(meal: meal)
    }
}
