//
//  ViewController.swift
//  Kitchen
//
//  Created by Ellie on 14/06/2019.
//  Copyright © 2019 ellie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var young_amateur = CookerFactory.shared().getCooker(CookerType: .Amateur, CookerName: "Ellie", CookerAge: 29, CookerGender: "Female")
    var old_chef = CookerFactory.shared().getCooker(CookerType: .Chef, CookerName: "Kostis", CookerAge: 55, CookerGender: "Male")
    
    var ing1 = IngredientFactory.shared().getIngredient(IngredientType: .Vegetable, IngredientName: "Tomato")
    var ing2 = IngredientFactory.shared().getIngredient(IngredientType: .Vegetable, IngredientName: "Cucumber")
    var ing3 = IngredientFactory.shared().getIngredient(IngredientType: .Vegetable, IngredientName: "Onion")
    var ing4 = IngredientFactory.shared().getIngredient(IngredientType: .Pasta, IngredientName: "Spaghetti")
    var ing5 = IngredientFactory.shared().getIngredient(IngredientType: .Sweet, IngredientName: "Sugar")
    
    var tool1 = ToolFactory.shared().getTool(ToolType: .ManualTool, ToolName: "Sink")
    var tool2 = ToolFactory.shared().getTool(ToolType: .ManualTool, ToolName: "Knife")
    var tool3 = ToolFactory.shared().getTool(ToolType: .ManualTool, ToolName: "Bench")
    var tool4 = ToolFactory.shared().getTool(ToolType: .ElectricalTool, ToolName: "Oven")
    var tool5 = ToolFactory.shared().getTool(ToolType: .ElectricalTool, ToolName: "Burner")

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
        print("------------------------------------------------")
        print("\(this_kitchen.cooker.name) uses the following ingredients:")
        for (index, item) in this_kitchen.recipe.Ingredients.enumerated() {
            print("\(index+1) ", terminator:"")
            this_kitchen.cooker.cook_ingredient(ingredient: item)
        }

        print("------------------------------------------------")
        print("\(this_kitchen.cooker.name) uses the following tools:")
        for (index, item) in this_kitchen.recipe.Tools.enumerated() {
            print("\(index+1) ", terminator:"")
            this_kitchen.cooker.use_tool(tool: item)
        }

        print("------------------------------------------------")
        print("\(this_kitchen.cooker.name) uses the following utensils:")
        for (index, item) in this_kitchen.recipe.Utensils.enumerated() {
            print("\(index+1) ", terminator:"")
            this_kitchen.cooker.use_utensil(utensil: item)
        }
        
        print("------------------------------------------------")
        print("\(this_kitchen.cooker.name) follows the next steps:")
        for (index, item) in this_kitchen.recipe.Steps.enumerated() {
            print("\(index+1) ", terminator:"")
            this_kitchen.cooker.follow_step(step: item)
        }
        //this_kitchen.recipe.listIngredients()


        //this_kitchen.recipe.listTools()
        //this_kitchen.recipe.listUtensils()
        //this_kitchen.recipe.listSteps()
        this_kitchen.cooker.finish_cooking()
        
    }


}

