//
//  Cooker.swift
//  Kitchen
//
//  Created by Ellie on 14/06/2019.
//  Copyright © 2019 ellie. All rights reserved.
//

import Foundation

protocol Cooker {
    var name : String {get set}
    var age : Int {get set}
    var gender: String {get set}
    
    func cooker_info()
    func start_cooking()
    func stop_cooking()
}

class Amateur : Cooker{
    var name: String
    var age : Int
    var gender: String
    
    init(AmateurName amateurname : String, AmateurAge amateurage : Int, AmateurGender amateurgender : String) {
        self.name = amateurname
        self.age = amateurage
        self.gender = amateurgender
    }
    
    func cooker_info() {
        print("Selected \(gender) cooker \(name) of age \(age)")
    }
    
    func start_cooking() {
        cooker_info()
        print("AMATEUR Cooker \(name) starts cooking!")
    }
    
    func stop_cooking() {
        print("AMATEUR Cooker \(name) stops cooking!")
    }
}

class Chef : Cooker {
    var name: String
    var age : Int
    var gender: String
    
    init(ChefName chefname : String, ChefAge chefage : Int, ChefGender chefgender : String) {
        self.name = chefname
        self.age = chefage
        self.gender = chefgender
    }
    
    func cooker_info() {
        print("Selected \(gender) cooker \(name) of age \(age)")
    }
    
    func start_cooking() {
        cooker_info()
        print("CHEF Cooker \(name) starts cooking!")
    }
    
    func stop_cooking() {
        print("CHEF Cooker \(name) stops cooking!")
    }
}

enum CookerTypes{
    case Amateur
    case Chef
}

class CookerFactory{
    
    static func getCooker(CookerType cookerType : CookerTypes, CookerName cookerName : String, CookerAge cookerAge : Int, CookerGender cookerGender : String)->Cooker{
        switch cookerType {
        case .Amateur:
            return Amateur(AmateurName: cookerName,AmateurAge: cookerAge,AmateurGender: cookerGender)
        case .Chef:
            return Chef(ChefName: cookerName,ChefAge: cookerAge,ChefGender: cookerGender)
        }
    }
}
