//
//  Ingredient.swift
//  Kitchen
//
//  Created by Ellie on 14/06/2019.
//  Copyright © 2019 ellie. All rights reserved.
//

import Foundation

protocol Ingredient{
    var name : String {get set}
    
}

class Vegetable : Ingredient{
    var name: String
    
    init(VegetableName vegetablename : String) {
        self.name = vegetablename
    }
}

class Pasta : Ingredient{
    var name: String
    
    init(PastaName pastaname : String) {
        self.name = pastaname
    }
}

class Sweet : Ingredient{
    var name: String
    
    init(SweetName sweetname : String) {
        self.name = sweetname
    }
}

enum IngredientTypes{
    case Vegetable
    case Pasta
    case Sweet
}

class IngredientFactory{

    private static var sharedIngredientFactory = IngredientFactory()
    
    class func shared() -> IngredientFactory {
        return sharedIngredientFactory
    }
    
    func getIngredient(IngredientType ingredientType : IngredientTypes, IngredientName ingredientName : String)->Ingredient{
        switch ingredientType {
        case .Vegetable:
            return Vegetable(VegetableName: ingredientName)
        case .Pasta:
            return Pasta(PastaName: ingredientName)
        case .Sweet:
            return Sweet(SweetName: ingredientName)
        }
    }
}
