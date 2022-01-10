//
//  ChickenClass.swift
//  chickenApp
//
//  Created by BRYAN RUIZ on 1/10/22.
//

import Foundation
import UIKit

enum ChickenT {
case regs, nugs, spicy, strips, gFilets, gNugs
    var value:Bool{
        switch self {
        case .regs:
            return true
        case .nugs:
            return true
        case .spicy:
            return true
        case .strips:
            return true
        case .gFilets:
            return true
        case .gNugs:
            return true
        }
    }
}

enum placeT {
    case Freezer,Thaw,Bread,none
    var value:Bool{
        switch self {
        case .Freezer:
            return true
        case .Thaw:
            return true
        case .Bread:
            return true
        case .none:
            return true
        }
    }
}


public class Chicken {
    
    var type:ChickenT
    var place:placeT
    
    init(type:ChickenT,place:placeT) {
        self.type = type
        self.place = place
    }
    
    
}
