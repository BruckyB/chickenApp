//
//  ChickenClass.swift
//  chickenApp
//
//  Created by BRYAN RUIZ on 1/10/22.
//

import Foundation
import UIKit
import CoreLocation

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
    static var freezerR:[Int] = [22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]
    static var freezerN:[Int] = [18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]
    static var freezerSF:[Int] = [14,15,16,17,18,19,20,21,22]
    static var freezerST:[Int] = [23,24,25,26,27,28,29]
    static var freezerGF:[Int] = [19,20,21,22,23,24,25]
    static var freezerGN:[Int] = [42,43,44,45,46]
    static var thawR:[Int] = [9,10,11,12,13,14,15,16,17,18,19,20,21]
    static var thawN:[Int] = [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
    static var thawSF:[Int] = [7,8,9,10,11,12,13]
    static var thawST:[Int] = [18,19,20,21,22]
    static var thawGF:[Int] = [15,16,17,18]
    static var thawGN:[Int] = [38,39,40,41]
    static var breadingR:[Int] = [6,7,8]
    static var breadingN:[Int] = [48,49,50,1]
    static var breadingSF:[Int] = [5,6]
    static var breadingST:[Int] = [16,17]
    static var breadingGF:[Int] = [14]
    static var breadingGN:[Int] = [37]
    static var notUsedR:[Int] = [41,42,43,44,45,46,47,48,49,50,1,2,3,4,5]
    static var notUsedN:[Int] = [41,42,43,44,45,46,47]
    static var notUsedSF:[Int] = [23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,1,2,3,4]
    static var notUsedST:[Int] = [30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    static var notUsedGF:[Int] = [26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,1,2,3,4,5,6,7,8,9,10,11,12,13]
    static var notUsedGN:[Int] = [47,48,49,50,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36]
    
    init(type:ChickenT,place:placeT,num:Int) {
        self.type = type
        self.place = place
        self.numberChick = num
        switch type {
        case .regs:
            if place == .Freezer {
                ChickenClass.freezerR.append(num)
            } else if place == .Thaw {
                ChickenClass.thawR.append(num)
            } else {
                ChickenClass.breadingR.append(num)
            }
        case .nugs:
            if place == .Freezer {
                ChickenClass.freezerN.append(num)
            } else if place == .Thaw {
                ChickenClass.thawN.append(num)
            } else {
                ChickenClass.breadingN.append(num)
            }
        case .spicy:
            if place == .Freezer {
                ChickenClass.freezerSF.append(num)
            } else if place == .Thaw {
                ChickenClass.thawSF.append(num)
            } else {
                ChickenClass.breadingSF.append(num)
            }
        case .strips:
            if place == .Freezer {
                ChickenClass.freezerST.append(num)
            } else if place == .Thaw {
                ChickenClass.thawST.append(num)
            } else {
                ChickenClass.breadingST.append(num)
            }
        case .gFilets:
            if place == .Freezer {
                ChickenClass.freezerGF.append(num)
            } else if place == .Thaw {
                ChickenClass.thawGF.append(num)
            } else {
                ChickenClass.breadingGF.append(num)
            }
        case .gNugs:
            if place == .Freezer {
                ChickenClass.freezerGN.append(num)
            } else if place == .Thaw {
                ChickenClass.thawGN.append(num)
            } else {
                ChickenClass.breadingGN.append(num)
            }
        }
    }
    
    func changeLocation(place:placeT,num:Int,type:ChickenT){
        switch place {
        case .Freezer:
            switch type {
            case .regs:
                if ChickenClass.notUsedR.contains(num) {
                    var blah = 0
                    for each in ChickenClass.notUsedR {
                        if each == num {
                            ChickenClass.notUsedR.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.freezerR.append(num)
                }
            case .nugs:
                if ChickenClass.notUsedN.contains(num) {
                    var blah = 0
                    for each in ChickenClass.notUsedN {
                        if each == num {
                            ChickenClass.notUsedN.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.freezerN.append(num)
                }
            case .spicy:
                if ChickenClass.notUsedSF.contains(num) {
                    var blah = 0
                    for each in ChickenClass.notUsedSF {
                        if each == num {
                            ChickenClass.notUsedSF.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.freezerSF.append(num)
                }
            case .strips:
                if ChickenClass.notUsedST.contains(num) {
                    var blah = 0
                    for each in ChickenClass.notUsedST {
                        if each == num {
                            ChickenClass.notUsedST.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.freezerST.append(num)
                }
            case .gFilets:
                if ChickenClass.notUsedGF.contains(num) {
                    var blah = 0
                    for each in ChickenClass.notUsedGF {
                        if each == num {
                            ChickenClass.notUsedGF.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.freezerGF.append(num)
                }
            case .gNugs:
                if ChickenClass.notUsedGN.contains(num) {
                    var blah = 0
                    for each in ChickenClass.notUsedGN {
                        if each == num {
                            ChickenClass.notUsedGN.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.freezerGN.append(num)
                }
            }
        case .Thaw:
            switch type {
            case .regs:
                if ChickenClass.freezerR.contains(num) {
                    var blah = 0
                    for each in ChickenClass.freezerR {
                        if each == num {
                            ChickenClass.freezerR.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.thawR.append(num)
                }
            case .nugs:
                if ChickenClass.freezerN.contains(num) {
                    var blah = 0
                    for each in ChickenClass.freezerN {
                        if each == num {
                            ChickenClass.freezerN.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.thawN.append(num)
                }
            case .spicy:
                if ChickenClass.freezerSF.contains(num) {
                    var blah = 0
                    for each in ChickenClass.freezerSF {
                        if each == num {
                            ChickenClass.freezerSF.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.thawSF.append(num)
                }
            case .strips:
                if ChickenClass.freezerST.contains(num) {
                    var blah = 0
                    for each in ChickenClass.freezerST {
                        if each == num {
                            ChickenClass.freezerST.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.thawST.append(num)
                }
            case .gFilets:
                if ChickenClass.freezerGF.contains(num) {
                    var blah = 0
                    for each in ChickenClass.freezerGF {
                        if each == num {
                            ChickenClass.freezerGF.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.thawGF.append(num)
                }
            case .gNugs:
                if ChickenClass.freezerGN.contains(num) {
                    var blah = 0
                    for each in ChickenClass.freezerGN {
                        if each == num {
                            ChickenClass.freezerGN.remove(at: blah)
                        }
                        blah+=1
                    }
                    ChickenClass.thawGN.append(num)
                }
            }
        case .Bread:
            return
        case .nones:
            return
        }
    }
    
    func colorChange(button:UIButton,type:ChickenT){
        switch type {
        case .regs:
            if ChickenClass.freezerR.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.cyan
            } else if ChickenClass.thawR.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else if ChickenClass.breadingR.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else {
                button.backgroundColor = UIColor.lightGray
            }
        case .nugs:
            if ChickenClass.freezerN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.cyan
            } else if ChickenClass.thawN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else if ChickenClass.breadingN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else {
                button.backgroundColor = UIColor.lightGray
            }
        case .spicy:
            if ChickenClass.freezerSF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.cyan
            } else if ChickenClass.thawSF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else if ChickenClass.breadingSF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else {
                button.backgroundColor = UIColor.lightGray
            }
        case .strips:
            if ChickenClass.freezerST.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.cyan
            } else if ChickenClass.thawST.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else if ChickenClass.breadingST.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else {
                button.backgroundColor = UIColor.lightGray
            }
        case .gFilets:
            if ChickenClass.freezerGF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.cyan
            } else if ChickenClass.thawGF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else if ChickenClass.breadingGF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else {
                button.backgroundColor = UIColor.lightGray
            }
        case .gNugs:
            if ChickenClass.freezerGN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.cyan
            } else if ChickenClass.thawGN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else if ChickenClass.breadingGN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else {
                button.backgroundColor = UIColor.lightGray
            }
        }
    }
    
    
}
