//
//  ViewController.swift
//  Kitchen
//
//  Created by Ellie on 14/06/2019.
//  Copyright © 2019 ellie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var young_amateur = CookerFactory.getCooker(CookerType: .Amateur, CookerName: "Ellie", CookerAge: 29, CookerGender: "Female")
    var old_chef = CookerFactory.getCooker(CookerType: .Chef, CookerName: "Kostis", CookerAge: 45, CookerGender: "Male")
    
    var ing1 = IngredientFactory.getIngredient(IngredientType: .Vegetable, IngredientName: "tomato")
    var ing2 = IngredientFactory.getIngredient(IngredientType: .Vegetable, IngredientName: "cucumber")
    var ing3 = IngredientFactory.getIngredient(IngredientType: .Vegetable, IngredientName: "onion")
    var ing4 = IngredientFactory.getIngredient(IngredientType: .Pasta, IngredientName: "spaghetti")
    var ing5 = IngredientFactory.getIngredient(IngredientType: .Sweet, IngredientName: "sugar")
    
    var tool1 = ToolFactory.getTool(ToolType: .ManualTool, ToolName: "Sink")
    var tool2 = ToolFactory.getTool(ToolType: .ManualTool, ToolName: "Knife")
    var tool3 = ToolFactory.getTool(ToolType: .ManualTool, ToolName: "Bench")
    var tool4 = ToolFactory.getTool(ToolType: .ElectricalTool, ToolName: "Oven")
    var tool5 = ToolFactory.getTool(ToolType: .ElectricalTool, ToolName: "Burner")

    var utensil1=Utensil(UtensilName: "Dish")
    var utensil2=Utensil(UtensilName: "Bowl")

    var step1=Step(StepName: "Clean the ingredients at the Sink")
    var step2=Step(StepName: "Let the ingredients dry on the Bench")
    var step3=Step(StepName: "Chop the ingredients with the Knife")
    var step4=Step(StepName: "Use olive oil")
    var step5=Step(StepName: "Use vinegar")
    var step6=Step(StepName: "Use oregano")
    var step7=Step(StepName: "Use salt")
    var step8=Step(StepName: "Mix")
    var step9=Step(StepName: "Put them in the Dish")
    var step10=Step(StepName: "Serve")

    var Greek_Salad = Recipe()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Greek_Salad.Ingredients += [ing1,ing2,ing3]
        Greek_Salad.Tools += [tool1,tool2,tool3]
        Greek_Salad.Utensils += [utensil1]
        Greek_Salad.Steps += [step1,step2,step3,step4,step5,step6,step7,step8,step9,step10]
        
        let this_kitchen=Kitchen(KitchenCooker: young_amateur, KitchenRecipe: Greek_Salad)
        
        this_kitchen.cooker.start_cooking()
        this_kitchen.recipe.listIngredients()
        this_kitchen.recipe.listTools()
        this_kitchen.recipe.listUtensils()
        this_kitchen.recipe.listSteps()
        this_kitchen.cooker.stop_cooking()
        
    }


}

