//
//  ChickenClass.swift
//  chickenApp
//
//  Created by BRYAN RUIZ on 1/10/22.
//

import Foundation
import UIKit
import CoreLocation

enum ChickenT:Codable {
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

enum placeT:Codable {
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


public class ChickenClass:Codable{
    
    
    enum codingKeys:String,CodingKey{
        case NUR
        case NUN
        case NUSF
        case NUST
        case NUGF
        case NUGN
        case FR
        case FN
        case FSF
        case FST
        case FGF
        case FGN
        case TR
        case TN
        case TSF
        case TST
        case TGF
        case TGN
        case BR
        case BN
        case BSF
        case BST
        case BGF
        case BGN
        case num
        case type
        case place
    }
    
    var type:ChickenT
    var place:placeT
    var numberChick:Int
    static var freezerR:[Int] = [22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]
    static var freezerN:[Int] = [18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]
    static var freezerSF:[Int] = [14,15,16,17,18,19,20,21,22]
    static var freezerST:[Int] = [23,24,25,26,27,28,29]
    static var freezerGF:[Int] = [19,20,21,22,23,24,25]
    static var freezerGN:[Int] = [42,43,44,45,46]
    static var thawR:[Int] = [10,11,12,13,14,15,16,17,18,19,20,21]
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
    static var undoR:[(place:placeT,nums:Int)] = []
    static var undoN:[(place:placeT,nums:Int)] = []
    static var undoSF:[(place:placeT,nums:Int)] = []
    static var undoST:[(place:placeT,nums:Int)] = []
    static var undoGF:[(place:placeT,nums:Int)] = []
    static var undoGN:[(place:placeT,nums:Int)] = []
    
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
            } else if place == .Bread {
                ChickenClass.breadingR.append(num)
            } else {
                changeLocation(place: .nones, num: num, type: type)
            }
        case .nugs:
            if place == .Freezer {
                ChickenClass.freezerN.append(num)
            } else if place == .Thaw {
                ChickenClass.thawN.append(num)
            } else if place == .Bread{
                ChickenClass.breadingN.append(num)
            } else {
                changeLocation(place: .nones, num: num, type: type)
            }
        case .spicy:
            if place == .Freezer {
                ChickenClass.freezerSF.append(num)
            } else if place == .Thaw {
                ChickenClass.thawSF.append(num)
            } else if place == .Bread{
                ChickenClass.breadingSF.append(num)
            } else {
                changeLocation(place: .nones, num: num, type: type)
            }
        case .strips:
            if place == .Freezer {
                ChickenClass.freezerST.append(num)
            } else if place == .Thaw {
                ChickenClass.thawST.append(num)
            } else if place == .Bread {
                ChickenClass.breadingST.append(num)
            } else {
                changeLocation(place: .nones, num: num, type: type)
            }
        case .gFilets:
            if place == .Freezer {
                ChickenClass.freezerGF.append(num)
            } else if place == .Thaw {
                ChickenClass.thawGF.append(num)
            } else if place == .Bread{
                ChickenClass.breadingGF.append(num)
            } else {
                changeLocation(place: .nones, num: num, type: type)
            }
        case .gNugs:
            if place == .Freezer {
                ChickenClass.freezerGN.append(num)
            } else if place == .Thaw {
                ChickenClass.thawGN.append(num)
            } else if place == .Bread {
                ChickenClass.breadingGN.append(num)
            } else {
                changeLocation(place: .nones, num: num, type: type)
            }
        }
    }
    
    public required init(from decoder: Decoder) throws {
        let decoded = try decoder.container(keyedBy: codingKeys.self)
        ChickenClass.notUsedR = try decoded.decode([Int].self, forKey: .NUR)
        ChickenClass.notUsedN = try decoded.decode([Int].self, forKey: .NUN)
        ChickenClass.notUsedSF = try decoded.decode([Int].self, forKey: .NUSF)
        ChickenClass.notUsedST = try decoded.decode([Int].self, forKey: .NUST)
        ChickenClass.notUsedGF = try decoded.decode([Int].self, forKey: .NUGF)
        ChickenClass.notUsedGN = try decoded.decode([Int].self, forKey: .NUGN)
        ChickenClass.freezerR = try decoded.decode([Int].self, forKey: .FR)
        ChickenClass.freezerN = try decoded.decode([Int].self, forKey: .FN)
        ChickenClass.freezerSF = try decoded.decode([Int].self, forKey: .FSF)
        ChickenClass.freezerST = try decoded.decode([Int].self, forKey: .FST)
        ChickenClass.freezerGF = try decoded.decode([Int].self, forKey: .FGF)
        ChickenClass.freezerGN = try decoded.decode([Int].self, forKey: .FGN)
        ChickenClass.thawR = try decoded.decode([Int].self, forKey: .TR)
        ChickenClass.thawN = try decoded.decode([Int].self, forKey: .TN)
        ChickenClass.thawSF = try decoded.decode([Int].self, forKey: .TSF)
        ChickenClass.thawST = try decoded.decode([Int].self, forKey: .TST)
        ChickenClass.thawGF = try decoded.decode([Int].self, forKey: .TGF)
        ChickenClass.thawGN = try decoded.decode([Int].self, forKey: .TGN)
        ChickenClass.breadingR = try decoded.decode([Int].self, forKey: .BR)
        ChickenClass.breadingN = try decoded.decode([Int].self, forKey: .BN)
        ChickenClass.breadingSF = try decoded.decode([Int].self, forKey: .BSF)
        ChickenClass.breadingST = try decoded.decode([Int].self, forKey: .BST)
        ChickenClass.breadingGF = try decoded.decode([Int].self, forKey: .BGF)
        ChickenClass.breadingGN = try decoded.decode([Int].self, forKey: .BGN)
        type = try decoded.decode(ChickenT.self, forKey: .type)
        place = try decoded.decode(placeT.self, forKey: .place)
        numberChick = try decoded.decode(Int.self, forKey: .num)
    }
    
    public func encode(to encoder: Encoder) throws {
        var encoded = encoder.container(keyedBy: codingKeys.self)
        try encoded.encode(ChickenClass.notUsedR, forKey: .NUR)
        try encoded.encode(ChickenClass.notUsedN, forKey: .NUN)
        try encoded.encode(ChickenClass.notUsedSF, forKey: .NUSF)
        try encoded.encode(ChickenClass.notUsedST, forKey: .NUST)
        try encoded.encode(ChickenClass.notUsedGF, forKey: .NUGF)
        try encoded.encode(ChickenClass.notUsedGN, forKey: .NUGN)
        try encoded.encode(ChickenClass.freezerR, forKey: .FR)
        try encoded.encode(ChickenClass.freezerN, forKey: .FN)
        try encoded.encode(ChickenClass.freezerSF, forKey: .FSF)
        try encoded.encode(ChickenClass.freezerST, forKey: .FST)
        try encoded.encode(ChickenClass.freezerGF, forKey: .FGF)
        try encoded.encode(ChickenClass.freezerGN, forKey: .FGN)
        try encoded.encode(ChickenClass.thawR, forKey: .TR)
        try encoded.encode(ChickenClass.thawN, forKey: .TN)
        try encoded.encode(ChickenClass.thawSF, forKey: .TSF)
        try encoded.encode(ChickenClass.thawST, forKey: .TST)
        try encoded.encode(ChickenClass.thawGF, forKey: .TGF)
        try encoded.encode(ChickenClass.thawGN, forKey: .TGN)
        try encoded.encode(ChickenClass.breadingR, forKey: .BR)
        try encoded.encode(ChickenClass.breadingN, forKey: .BN)
        try encoded.encode(ChickenClass.breadingSF, forKey: .BSF)
        try encoded.encode(ChickenClass.breadingST, forKey: .BST)
        try encoded.encode(ChickenClass.breadingGF, forKey: .BGF)
        try encoded.encode(ChickenClass.breadingGN, forKey: .BGN)
        try encoded.encode(place, forKey: .place)
        try encoded.encode(type, forKey: .type)
        try encoded.encode(numberChick, forKey: .num)
    }
    
    func changeLocation(place:placeT,num:Int,type:ChickenT){
        switch place {
        case .Freezer:
            switch type {
            case .regs:
                if ChickenClass.freezerR.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerR {
                        if each == num {
                            ChickenClass.freezerR.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.thawR.append(num)
                }
            case .nugs:
                if ChickenClass.freezerN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerN {
                        if each == num {
                            ChickenClass.freezerN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.thawN.append(num)
                }
            case .spicy:
                if ChickenClass.freezerSF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerSF {
                        if each == num {
                            ChickenClass.freezerSF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.thawSF.append(num)
                }
            case .strips:
                if ChickenClass.freezerST.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerST {
                        if each == num {
                            ChickenClass.freezerST.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.thawST.append(num)
                }
            case .gFilets:
                if ChickenClass.freezerGF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerGF {
                        if each == num {
                            ChickenClass.freezerGF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.thawGF.append(num)
                }
            case .gNugs:
                if ChickenClass.freezerGN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerGN {
                        if each == num {
                            ChickenClass.freezerGN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.thawGN.append(num)
                }
            }
        case .Thaw:
            switch type {
            case .regs:
                if ChickenClass.thawR.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawR {
                        if each == num {
                            ChickenClass.thawR.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.breadingR.append(num)
                }
            case .nugs:
                if ChickenClass.thawN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawN {
                        if each == num {
                            ChickenClass.thawN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.breadingN.append(num)
                }
            case .spicy:
                if ChickenClass.thawSF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawSF {
                        if each == num {
                            ChickenClass.thawSF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.breadingSF.append(num)
                }
            case .strips:
                if ChickenClass.thawST.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawST {
                        if each == num {
                            ChickenClass.thawST.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.breadingST.append(num)
                }
            case .gFilets:
                if ChickenClass.thawGF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawGF {
                        if each == num {
                            ChickenClass.thawGF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.breadingGF.append(num)
                }
            case .gNugs:
                if ChickenClass.thawGN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawGN {
                        if each == num {
                            ChickenClass.thawGN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.breadingGN.append(num)
                }
            }
        case .Bread:
            switch type {
            case .regs:
                if ChickenClass.breadingR.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingR {
                        if each == num {
                            ChickenClass.breadingR.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.notUsedR.append(num)
                }
            case .nugs:
                if ChickenClass.breadingN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingN {
                        if each == num {
                            ChickenClass.breadingN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.notUsedN.append(num)
                }
            case .spicy:
                if ChickenClass.breadingSF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingSF {
                        if each == num {
                            ChickenClass.breadingSF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.notUsedSF.append(num)
                }
            case .strips:
                if ChickenClass.breadingST.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingST {
                        if each == num {
                            ChickenClass.breadingST.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.notUsedST.append(num)
                }
            case .gFilets:
                if ChickenClass.breadingGF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingGF {
                        if each == num {
                            ChickenClass.breadingGF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.notUsedGF.append(num)
                }
            case .gNugs:
                if ChickenClass.breadingGN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingGN {
                        if each == num {
                            ChickenClass.breadingGN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.notUsedGN.append(num)
                }
            }
        case .nones:
            switch type {
            case .regs:
                if ChickenClass.notUsedR.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedR {
                        if each == num {
                            ChickenClass.notUsedR.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.freezerR.append(num)
                }
            case .nugs:
                if ChickenClass.notUsedN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedN {
                        if each == num {
                            ChickenClass.notUsedN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.freezerN.append(num)
                }
            case .spicy:
                if ChickenClass.notUsedSF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedSF {
                        if each == num {
                            ChickenClass.notUsedSF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.freezerSF.append(num)
                }
            case .strips:
                if ChickenClass.notUsedST.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedST {
                        if each == num {
                            ChickenClass.notUsedST.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.freezerST.append(num)
                }
            case .gFilets:
                if ChickenClass.notUsedGF.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedGF {
                        if each == num {
                            ChickenClass.notUsedGF.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.freezerGF.append(num)
                }
            case .gNugs:
                if ChickenClass.notUsedGN.contains(num) {
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedGN {
                        if each == num {
                            ChickenClass.notUsedGN.remove(at: blah)
                            return
                        }
                        blah+=1
                    }
                    ChickenClass.freezerGN.append(num)
                }
                }
        }
    }
    
    func undoLocation(type:ChickenT){
        print("undo func")
        print(ChickenClass.undoR)
        print(ChickenClass.undoN)
        print(ChickenClass.undoSF)
        print(ChickenClass.undoST)
        print(ChickenClass.undoGF)
        print(ChickenClass.undoGN)
        switch type {
        case .regs:
            if ChickenClass.undoR.isEmpty {}
            else {
           let place = ChickenClass.undoR.last!.place
           let  nums = ChickenClass.undoR.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.freezerR {
                        if nums == eachs {
                            ChickenClass.freezerR.remove(at: i)
                            ChickenClass.notUsedR.append(nums)
                            ChickenClass.undoR.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.thawR {
                        if nums == eachs {
                            ChickenClass.thawR.remove(at: i)
                            ChickenClass.freezerR.append(nums)
                            ChickenClass.undoR.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.breadingR {
                        if nums == eachs {
                            ChickenClass.breadingR.remove(at: i)
                            ChickenClass.thawR.append(nums)
                            ChickenClass.undoR.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.notUsedR {
                        if nums == eachs {
                            ChickenClass.notUsedR.remove(at: i)
                            ChickenClass.breadingR.append(nums)
                            ChickenClass.undoR.removeLast()
                            return
                        }
                        i += 1
                    }
                }
            }
        case .nugs:
            if ChickenClass.undoN.isEmpty {}
            else {
            let place = ChickenClass.undoN.last!.place
            let  nums = ChickenClass.undoN.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.freezerN {
                        if nums == eachs {
                            ChickenClass.freezerN.remove(at: i)
                            ChickenClass.notUsedN.append(nums)
                            ChickenClass.undoN.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.thawN {
                        if nums == eachs {
                            ChickenClass.thawN.remove(at: i)
                            ChickenClass.freezerN.append(nums)
                            ChickenClass.undoN.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.breadingN {
                        if nums == eachs {
                            ChickenClass.breadingN.remove(at: i)
                            ChickenClass.thawN.append(nums)
                            ChickenClass.undoN.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.notUsedN {
                        if nums == eachs {
                            ChickenClass.notUsedN.remove(at: i)
                            ChickenClass.breadingN.append(nums)
                            ChickenClass.undoN.removeLast()
                            return
                        }
                        i += 1
                    }
                }
            }
        case .spicy:
            if ChickenClass.undoSF.isEmpty {}
            else {
            let place = ChickenClass.undoSF.last!.place
            let  nums = ChickenClass.undoSF.last!.nums
                    if place == .nones {
                        var i = 0
                        for eachs in ChickenClass.freezerSF {
                            if nums == eachs {
                                ChickenClass.freezerSF.remove(at: i)
                                ChickenClass.notUsedSF.append(nums)
                                ChickenClass.undoSF.removeLast()
                                return
                            }
                            i += 1
                        }
                    }
                    if place == .Freezer {
                        var i = 0
                        for eachs in ChickenClass.thawSF {
                            if nums == eachs {
                                ChickenClass.thawSF.remove(at: i)
                                ChickenClass.freezerSF.append(nums)
                                ChickenClass.undoSF.removeLast()
                                return
                            }
                            i += 1
                        }
                    }
                    if place == .Thaw {
                        var i = 0
                        for eachs in ChickenClass.breadingSF {
                            if nums == eachs {
                                ChickenClass.breadingSF.remove(at: i)
                                ChickenClass.thawSF.append(nums)
                                ChickenClass.undoSF.removeLast()
                                return
                            }
                            i += 1
                        }
                    }
                    if place == .Bread {
                        var i = 0
                        for eachs in ChickenClass.notUsedSF {
                            if nums == eachs {
                                ChickenClass.notUsedSF.remove(at: i)
                                ChickenClass.breadingSF.append(nums)
                                ChickenClass.undoSF.removeLast()
                                return
                            }
                            i += 1
                        }
                    }
            }
        case .strips:
            if ChickenClass.undoST.isEmpty {}
            else {
            let place = ChickenClass.undoST.last!.place
            let  nums = ChickenClass.undoST.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.freezerST {
                        if nums == eachs {
                            ChickenClass.freezerST.remove(at: i)
                            ChickenClass.notUsedST.append(nums)
                            ChickenClass.undoST.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.thawST {
                        if nums == eachs {
                            ChickenClass.thawST.remove(at: i)
                            ChickenClass.freezerST.append(nums)
                            ChickenClass.undoST.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.breadingST {
                        if nums == eachs {
                            ChickenClass.breadingST.remove(at: i)
                            ChickenClass.thawST.append(nums)
                            ChickenClass.undoST.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.notUsedST {
                        if nums == eachs {
                            ChickenClass.notUsedST.remove(at: i)
                            ChickenClass.breadingST.append(nums)
                            ChickenClass.undoST.removeLast()
                            return
                        }
                        i += 1
                    }
                }
            }
        case .gFilets:
            if ChickenClass.undoGF.isEmpty {}
            else {
            let place = ChickenClass.undoGF.last!.place
            let  nums = ChickenClass.undoGF.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.freezerGF {
                        if nums == eachs {
                            ChickenClass.freezerGF.remove(at: i)
                            ChickenClass.notUsedGF.append(nums)
                            ChickenClass.undoGF.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.thawGF {
                        if nums == eachs {
                            ChickenClass.thawGF.remove(at: i)
                            ChickenClass.freezerGF.append(nums)
                            ChickenClass.undoGF.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.breadingGF {
                        if nums == eachs {
                            ChickenClass.breadingGF.remove(at: i)
                            ChickenClass.thawGF.append(nums)
                            ChickenClass.undoGF.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.notUsedGF {
                        if nums == eachs {
                            ChickenClass.notUsedGF.remove(at: i)
                            ChickenClass.breadingGF.append(nums)
                            ChickenClass.undoGF.removeLast()
                            return
                        }
                        i += 1
                    }
                }
            }
        case .gNugs:
            if ChickenClass.undoR.isEmpty {}
            else {
            let place = ChickenClass.undoGN.last!.place
            let  nums = ChickenClass.undoGN.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.freezerGN {
                        if nums == eachs {
                            ChickenClass.freezerGN.remove(at: i)
                            ChickenClass.notUsedGN.append(nums)
                            ChickenClass.undoGN.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.thawGN {
                        if nums == eachs {
                            ChickenClass.thawGN.remove(at: i)
                            ChickenClass.freezerGN.append(nums)
                            ChickenClass.undoGN.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.breadingGN {
                        if nums == eachs {
                            ChickenClass.breadingGN.remove(at: i)
                            ChickenClass.thawGN.append(nums)
                            ChickenClass.undoGN.removeLast()
                            return
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.notUsedGN {
                        if nums == eachs {
                            ChickenClass.notUsedGN.remove(at: i)
                            ChickenClass.breadingGN.append(nums)
                            ChickenClass.undoGN.removeLast()
                            return
                        }
                        i += 1
                        }
                    }
                }
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
