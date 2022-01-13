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
    static var freezerR:[Int] = [24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42]
    static var freezerN:[Int] = [9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
    static var freezerSF:[Int] = [39,40,41,42,43,44,45,46,47]
    static var freezerST:[Int] = [4,5,6,7,8,9,10]
    static var freezerGF:[Int] = [3,4,5,6,7,8,9]
    static var freezerGN:[Int] = [28,29,30,31,32]
    static var thawR:[Int] = [43,44,45,46,47,48,49,50,1,2,3,4,5]
    static var thawN:[Int] = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
    static var thawSF:[Int] = [48,49,50,1,2,3,4]
    static var thawST:[Int] = [11,12,13,14,15]
    static var thawGF:[Int] = [10,11,12,13]
    static var thawGN:[Int] = [33,34,35,36]
    static var breadingR:[Int] = [6,7,8]
    static var breadingN:[Int] = [48,49,50,1]
    static var breadingSF:[Int] = [5,6]
    static var breadingST:[Int] = [16,17]
    static var breadingGF:[Int] = [14]
    static var breadingGN:[Int] = [37]
    static var notUsedR:[Int] = [9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]
    static var notUsedN:[Int] = [2,3,4,5,6,7,8]
    static var notUsedSF:[Int] = [7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,2526,27,28,29,30,31,32,33,34,35,36,37,38]
    static var notUsedST:[Int] = [18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,1,2,3]
    static var notUsedGF:[Int] = [15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,1,2]
    static var notUsedGN:[Int] = [38,39,40,41,42,43,44,45,46,47,48,49,50,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27]
    
    init(type:ChickenT,place:placeT,num:Int) {
        self.type = type
        self.place = place
        self.numberChick = num
        switch type {
        case .regs:
            if place == .Freezer {
                freezerR.append(num)
            } else if place == .Thaw {
                thawR.append(num)
            } else {
                breadingR.append(num)
            }
        case .nugs:
            if place == .Freezer {
                freezerN.append(num)
            } else if place == .Thaw {
                thawN.append(num)
            } else {
                breadingN.append(num)
            }
        case .spicy:
            if place == .Freezer {
                freezerSF.append(num)
            } else if place == .Thaw {
                thawSF.append(num)
            } else {
                breadingSF.append(num)
            }
        case .strips:
            if place == .Freezer {
                freezerST.append(num)
            } else if place == .Thaw {
                thawST.append(num)
            } else {
                breadingST.append(num)
            }
        case .gFilets:
            if place == .Freezer {
                freezerGF.append(num)
            } else if place == .Thaw {
                thawGF.append(num)
            } else {
                breadingGF.append(num)
            }
        case .gNugs:
            if place == .Freezer {
                freezerGN.append(num)
            } else if place == .Thaw {
                thawGN.append(num)
            } else {
                breadingGN.append(num)
            }
        }
    }
    
    
}
