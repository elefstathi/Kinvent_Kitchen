//
//  Recipe.swift
//  Kitchen
//
//  Created by Ellie on 14/06/2019.
//  Copyright © 2019 ellie. All rights reserved.
//

import Foundation

class Recipe {
    var Ingredients = [Ingredient]()
    var Tools = [Tool]()
    var Utensils = [Utensil]()
    var Steps = [Step]()
    
    func listIngredients(){
        print("---------------------------")
        print("List of recipe Ingredients:")
        for (index, item) in Ingredients.enumerated() {
            print("\(index+1) \(item.name)")
        }
    }
    
    func listTools(){
        print("---------------------------")
        print("List of recipe Tools:")
        for (index, item) in Tools.enumerated() {
            print("\(index+1) \(item.name)")
        }
    }
    
    func listUtensils(){
        print("---------------------------")
        print("List of recipe Utensils:")
        for (index, item) in Utensils.enumerated() {
            print("\(index+1) \(item.name)")
        }
    }
    
    func listSteps(){
        print("---------------------------")
        print("List of recipe Steps:")
        for (index, item) in Steps.enumerated() {
            print("\(index+1) \(item.name)")
        }
    }
}
