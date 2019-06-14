//
//  Tool.swift
//  Kitchen
//
//  Created by Ellie on 14/06/2019.
//  Copyright © 2019 ellie. All rights reserved.
//

import Foundation

protocol Tool{
    var name : String {get set}
    
}
class ElectricalTool : Tool{
    var name: String
    
    init(ElectricalToolName electricaltoolname : String) {
        self.name = electricaltoolname
    }
}

class ManualTool : Tool{
    var name: String
    
    init(ManualToolName manualtoolname : String) {
        self.name = manualtoolname
    }
}

enum ToolTypes{
    case ElectricalTool
    case ManualTool
}

class ToolFactory{
    
    private static var sharedToolFactory = ToolFactory()
    
    class func shared() -> ToolFactory {
        return sharedToolFactory
    }
    
    func getTool(ToolType toolType : ToolTypes, ToolName toolName : String)->Tool{
        switch toolType {
        case .ElectricalTool:
            return ElectricalTool(ElectricalToolName: toolName)
        case .ManualTool:
            return ManualTool(ManualToolName: toolName)
        }
    }
}
