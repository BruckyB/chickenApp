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
    case Freezer,Thaw,Bread,nones
    var value:Bool{
        switch self {
        case .Freezer:
            return true
        case .Thaw:
            return true
        case .Bread:
            return true
        case .nones:
            return true
        }
    }
}


public class ChickenClass{
    
    var type:ChickenT
    var place:placeT
    var numberChick:Int
    var freezerR:[Int] = []
    var freezerN:[Int] = []
    var freezerSF:[Int] = []
    var freezerST:[Int] = []
    var freezerGF:[Int] = []
    var freezerGN:[Int] = []
    var thawR:[Int] = []
    var thawN:[Int] = []
    var thawSF:[Int] = []
    var thawST:[Int] = []
    var thawGF:[Int] = []
    var thawGN:[Int] = []
    var breadingR:[Int] = []
    var breadingN:[Int] = []
    var breadingSF:[Int] = []
    var breadingST:[Int] = []
    var breadingGF:[Int] = []
    var breadingGN:[Int] = []
    var notUsedR:[Int] = []
    var notUsedN:[Int] = []
    var notUsedSF:[Int] = []
    var notUsedST:[Int] = []
    var notUsedGF:[Int] = []
    var notUsedGN:[Int] = []
    
    init(type:ChickenT,place:placeT,num:Int) {
        self.type = type
        self.place = place
        self.numberChick = num
    }
    
    
}
