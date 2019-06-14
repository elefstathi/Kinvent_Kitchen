//
//  Kitchen.swift
//  Kitchen
//
//  Created by Ellie on 14/06/2019.
//  Copyright © 2019 ellie. All rights reserved.
//

import Foundation

class Kitchen {
    var cooker: Cooker
    var recipe: Recipe
    
    init(KitchenCooker kitchencooker : Cooker, KitchenRecipe kitchenrecipe : Recipe) {
        self.cooker = kitchencooker
        self.recipe = kitchenrecipe
        
    }
}

class Utensil{
    var name: String
    
    init(UtensilName utensilname : String) {
        self.name = utensilname
    }
}

class Step{
    var name: String
    
    init(StepName stepname : String) {
        self.name = stepname
    }
}

