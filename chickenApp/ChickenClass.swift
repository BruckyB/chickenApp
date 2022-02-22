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
        case times
    }
    
    var type:ChickenT
    var place:placeT
    var numberChick:Int
    var time:[Date] = []
    static var freezerR:[Int] = []
    static var freezerN:[Int] = []
    static var freezerSF:[Int] = []
    static var freezerST:[Int] = []
    static var freezerGF:[Int] = []
    static var freezerGN:[Int] = []
    static var thawR:[Int] = []
    static var thawN:[Int] = []
    static var thawSF:[Int] = []
    static var thawST:[Int] = []
    static var thawGF:[Int] = []
    static var thawGN:[Int] = []
    static var breadingR:[Int] = []
    static var breadingN:[Int] = []
    static var breadingSF:[Int] = []
    static var breadingST:[Int] = []
    static var breadingGF:[Int] = []
    static var breadingGN:[Int] = []
    static var notUsedR:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
    static var notUsedN:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
    static var notUsedSF:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
    static var notUsedST:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
    static var notUsedGF:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
    static var notUsedGN:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
    static var undoR:[(place:placeT,nums:Int)] = []
    
    
    init(type:ChickenT,place:placeT,num:Int,time:Date) {
        self.time.append(time)
        self.type = type
        self.place = place
        self.numberChick = num
        switch type {
        case .regs:
            if place == .Freezer {
                var i = 0
                for each in ChickenClass.notUsedR {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.notUsedR.remove(at: i)
                        break
                    }
                    i+=1
                }
                ChickenClass.freezerR.append(num)
            } else if place == .Thaw {
                var i = 0
                for each in ChickenClass.freezerR {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.freezerR.remove(at: i)
                        break
                    }
                i+=1
                }
                ChickenClass.thawR.append(num)
            } else if place == .Bread {
                var i = 0
                for each in ChickenClass.thawR {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.thawR.remove(at: i)
                        break
                    }
                i+=1
                }
                ChickenClass.breadingR.append(num)
            } else {
                var i = 0
                for each in ChickenClass.breadingR {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.breadingR.remove(at: i)
                        break
                    }
                    i+=1
                }
                ChickenClass.notUsedR.append(num)
            }
        case .nugs:
            if place == .Freezer {
                var i = 0
                for each in ChickenClass.notUsedN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.notUsedN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.freezerN.append(num)
            } else if place == .Thaw {
                var i = 0
                for each in ChickenClass.freezerN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.freezerN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.thawN.append(num)
            } else if place == .Bread{
                var i = 0
                for each in ChickenClass.thawN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.thawN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.breadingN.append(num)
            } else {
                var i = 0
                for each in ChickenClass.breadingN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.breadingN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.notUsedN.append(num)
            }
        case .spicy:
            if place == .Freezer {
                var i = 0
                for each in ChickenClass.notUsedSF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.notUsedSF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.freezerSF.append(num)
            } else if place == .Thaw {
                var i = 0
                for each in ChickenClass.freezerSF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.freezerSF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.thawSF.append(num)
            } else if place == .Bread{
                var i = 0
                for each in ChickenClass.thawSF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.thawSF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.breadingSF.append(num)
            } else {
                var i = 0
                for each in ChickenClass.breadingSF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.breadingSF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.notUsedSF.append(num)
            }
        case .strips:
            if place == .Freezer {
                var i = 0
                for each in ChickenClass.notUsedST {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.notUsedST.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.freezerST.append(num)
            } else if place == .Thaw {
                var i = 0
                for each in ChickenClass.freezerST {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.freezerST.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.thawST.append(num)
            } else if place == .Bread {
                var i = 0
                for each in ChickenClass.thawST {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.thawST.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.breadingST.append(num)
            } else {
                var i = 0
                for each in ChickenClass.breadingST {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.breadingST.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.notUsedST.append(num)
            }
        case .gFilets:
            if place == .Freezer {
                var i = 0
                for each in ChickenClass.notUsedGF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.notUsedGF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.freezerGF.append(num)
            } else if place == .Thaw {
                var i = 0
                for each in ChickenClass.freezerGF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.freezerGF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.thawGF.append(num)
            } else if place == .Bread{
                var i = 0
                for each in ChickenClass.thawGF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.thawGF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.breadingGF.append(num)
            } else {
                var i = 0
                for each in ChickenClass.breadingGF {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.breadingGF.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.notUsedGF.append(num)
            }
        case .gNugs:
            if place == .Freezer {
                var i = 0
                for each in ChickenClass.notUsedGN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.notUsedGN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.freezerGN.append(num)
            } else if place == .Thaw {
                var i = 0
                for each in ChickenClass.freezerGN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.freezerGN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.thawGN.append(num)
            } else if place == .Bread {
                var i = 0
                for each in ChickenClass.thawGN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.thawGN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.breadingGN.append(num)
            } else {
                var i = 0
                for each in ChickenClass.breadingGN {
                    if each == num {
                        ChickenClass.undoR.append((place,num))
                        ChickenClass.breadingGN.remove(at: i)
                        break
                    }
                    i += 1
                }
                ChickenClass.notUsedGN.append(num)
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
        time = try decoded.decode([Date].self, forKey: .times)
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
        try encoded.encode(time, forKey: .times)
    }
    
    func changeLocation(place:placeT,num:Int,type:ChickenT,nTime:Date){
        switch place {
        case .Freezer:
            switch type {
            case .regs:
                if ChickenClass.freezerR.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerR {
                        if each == num {
                            self.place = .Thaw
                            ChickenClass.freezerR.remove(at: blah)
                            ChickenClass.thawR.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .nugs:
                if ChickenClass.freezerN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerN {
                        if each == num {
                            self.place = .Thaw
                            ChickenClass.freezerN.remove(at: blah)
                            ChickenClass.thawN.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .spicy:
                if ChickenClass.freezerSF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerSF {
                        if each == num {
                            self.place = .Thaw
                            ChickenClass.freezerSF.remove(at: blah)
                            ChickenClass.thawSF.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .strips:
                if ChickenClass.freezerST.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerST {
                        if each == num {
                            self.place = .Thaw
                            ChickenClass.freezerST.remove(at: blah)
                            ChickenClass.thawST.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .gFilets:
                if ChickenClass.freezerGF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerGF {
                        if each == num {
                            self.place = .Thaw
                            ChickenClass.freezerGF.remove(at: blah)
                            ChickenClass.thawGF.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .gNugs:
                if ChickenClass.freezerGN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.freezerGN {
                        if each == num {
                            self.place = .Thaw
                            ChickenClass.freezerGN.remove(at: blah)
                            ChickenClass.thawGN.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            }
        case .Thaw:
            switch type {
            case .regs:
                if ChickenClass.thawR.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawR {
                        if each == num {
                            self.place = .Bread
                            ChickenClass.thawR.remove(at: blah)
                            ChickenClass.breadingR.append(num)
                            return
                        }
                        blah+=1
                    }
                   
                }
            case .nugs:
                if ChickenClass.thawN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawN {
                        if each == num {
                            self.place = .Bread
                            ChickenClass.thawN.remove(at: blah)
                            ChickenClass.breadingN.append(num)
                            return
                        }
                        blah+=1
                    }
                   
                }
            case .spicy:
                if ChickenClass.thawSF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawSF {
                        if each == num {
                            self.place = .Bread
                            ChickenClass.thawSF.remove(at: blah)
                            ChickenClass.breadingSF.append(num)
                            return
                        }
                        blah+=1
                    }
                    
                }
            case .strips:
                if ChickenClass.thawST.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawST {
                        if each == num {
                            self.place = .Bread
                            ChickenClass.thawST.remove(at: blah)
                            ChickenClass.breadingST.append(num)
                            return
                        }
                        blah+=1
                    }
                    
                }
            case .gFilets:
                if ChickenClass.thawGF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawGF {
                        if each == num {
                            self.place = .Bread
                            ChickenClass.thawGF.remove(at: blah)
                            ChickenClass.breadingGF.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .gNugs:
                if ChickenClass.thawGN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.thawGN {
                        if each == num {
                            self.place = .Bread
                            ChickenClass.thawGN.remove(at: blah)
                            ChickenClass.breadingGN.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            }
        case .Bread:
            switch type {
            case .regs:
                if ChickenClass.breadingR.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingR {
                        if each == num {
                            self.place = .nones
                            ChickenClass.breadingR.remove(at: blah)
                            ChickenClass.notUsedR.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .nugs:
                if ChickenClass.breadingN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingN {
                        if each == num {
                            self.place = .nones
                            ChickenClass.breadingN.remove(at: blah)
                            ChickenClass.notUsedN.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .spicy:
                if ChickenClass.breadingSF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingSF {
                        if each == num {
                            self.place = .nones
                            ChickenClass.breadingSF.remove(at: blah)
                            ChickenClass.notUsedSF.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .strips:
                if ChickenClass.breadingST.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingST {
                        if each == num {
                            self.place = .nones
                            ChickenClass.breadingST.remove(at: blah)
                            ChickenClass.notUsedST.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .gFilets:
                if ChickenClass.breadingGF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingGF {
                        if each == num {
                            self.place = .nones
                            ChickenClass.breadingGF.remove(at: blah)
                            ChickenClass.notUsedGF.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .gNugs:
                if ChickenClass.breadingGN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.breadingGN {
                        if each == num {
                            self.place = .nones
                            ChickenClass.breadingGN.remove(at: blah)
                            ChickenClass.notUsedGN.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            }
        case .nones:
            switch type {
            case .regs:
                if ChickenClass.notUsedR.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedR {
                        if each == num {
                            self.place = .Freezer
                            ChickenClass.notUsedR.remove(at: blah)
                            ChickenClass.freezerR.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .nugs:
                if ChickenClass.notUsedN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedN {
                        if each == num {
                            self.place = .Freezer
                            ChickenClass.notUsedN.remove(at: blah)
                            ChickenClass.freezerN.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .spicy:
                if ChickenClass.notUsedSF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedSF {
                        if each == num {
                            self.place = .Freezer
                            ChickenClass.notUsedSF.remove(at: blah)
                            ChickenClass.freezerSF.append(num)
                            return
                        }
                        blah+=1
                    }
                    
                }
            case .strips:
                if ChickenClass.notUsedST.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedST {
                        if each == num {
                            self.place = .Freezer
                            ChickenClass.notUsedST.remove(at: blah)
                            ChickenClass.freezerST.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .gFilets:
                if ChickenClass.notUsedGF.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedGF {
                        if each == num {
                            self.place = .Freezer
                            ChickenClass.notUsedGF.remove(at: blah)
                            ChickenClass.freezerGF.append(num)
                            return
                        }
                        blah+=1
                    }
                }
            case .gNugs:
                if ChickenClass.notUsedGN.contains(num) {
                    time.append(nTime)
                    ChickenClass.undoR.append((place,num))
                    var blah = 0
                    for each in ChickenClass.notUsedGN {
                        if each == num {
                            self.place = .Freezer
                            ChickenClass.notUsedGN.remove(at: blah)
                            ChickenClass.freezerGN.append(num)
                            return
                            }
                        }
                        blah+=1
                    }
                }
        }
    }
    
    func undoLocation(type:ChickenT,crit:[ChickenClass]) -> [ChickenClass] {
        print("undo func")
        print(ChickenClass.undoR)
        var crit2 = crit
        switch type {
        case .regs:
            if ChickenClass.undoR.isEmpty {}
            else {
           let place = ChickenClass.undoR.last!.place
           let  nums = ChickenClass.undoR.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.notUsedR {
                        if nums == eachs {
                            self.place = .nones
                            ChickenClass.notUsedR.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.breadingR.append(nums)
                            ChickenClass.undoR.removeLast()
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.freezerR {
                        if nums == eachs {
                            self.place = .Freezer
                            ChickenClass.freezerR.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.notUsedR.append(nums)
                            ChickenClass.undoR.removeLast()
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.thawR {
                        if nums == eachs {
                            self.place = .Thaw
                            ChickenClass.thawR.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.freezerR.append(nums)
                            ChickenClass.undoR.removeLast()
                            return  crit2
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.breadingR {
                        if nums == eachs {
                            self.place = .Bread
                            ChickenClass.breadingR.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.thawR.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
            }
        case .nugs:
            if ChickenClass.undoR.isEmpty {}
            else {
            let place = ChickenClass.undoR.last!.place
            let  nums = ChickenClass.undoR.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.notUsedN {
                        if nums == eachs {
                            print("sdfghj")
                            self.place = .nones
                            ChickenClass.notUsedN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.breadingN.append(nums)
                            ChickenClass.undoR.removeLast()
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.freezerN {
                        if nums == eachs {
                            self.place = .Freezer
                            ChickenClass.freezerN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.notUsedN.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.thawN {
                        if nums == eachs {
                            self.place = .Thaw
                            ChickenClass.thawN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.freezerN.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.breadingN {
                        if nums == eachs {
                            self.place = .Bread
                            ChickenClass.breadingN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.thawN.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
            }
        case .spicy:
            if ChickenClass.undoR.isEmpty {}
            else {
            let place = ChickenClass.undoR.last!.place
            let  nums = ChickenClass.undoR.last!.nums
                    if place == .nones {
                        var i = 0
                        for eachs in ChickenClass.notUsedSF {
                            if nums == eachs {
                                self.place = .nones
                                ChickenClass.notUsedSF.remove(at: i)
                                crit2.removeFirst()
                                ChickenClass.breadingSF.append(nums)
                                ChickenClass.undoR.removeLast()
                                
                                return crit2
                            }
                            i += 1
                        }
                    }
                    if place == .Freezer {
                        var i = 0
                        for eachs in ChickenClass.freezerSF {
                            if nums == eachs {
                                self.place = .Freezer
                                ChickenClass.freezerSF.remove(at: i)
                                crit2.removeFirst()
                                ChickenClass.notUsedSF.append(nums)
                                ChickenClass.undoR.removeLast()
                                
                                return crit2
                            }
                            i += 1
                        }
                    }
                    if place == .Thaw {
                        var i = 0
                        for eachs in ChickenClass.thawSF {
                            if nums == eachs {
                                self.place = .Thaw
                                ChickenClass.thawSF.remove(at: i)
                                crit2.removeFirst()
                                ChickenClass.freezerSF.append(nums)
                                ChickenClass.undoR.removeLast()
                                
                                return crit2
                            }
                            i += 1
                        }
                    }
                    if place == .Bread {
                        var i = 0
                        for eachs in ChickenClass.breadingSF {
                            if nums == eachs {
                                self.place = .Bread
                                ChickenClass.breadingSF.remove(at: i)
                                crit2.removeFirst()
                                ChickenClass.thawSF.append(nums)
                                ChickenClass.undoR.removeLast()
                                
                                return crit2
                            }
                            i += 1
                        }
                    }
            }
        case .strips:
            if ChickenClass.undoR.isEmpty {}
            else {
            let place = ChickenClass.undoR.last!.place
            let  nums = ChickenClass.undoR.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.notUsedST {
                        if nums == eachs {
                            self.place = .nones
                            ChickenClass.notUsedST.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.breadingST.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.freezerST {
                        if nums == eachs {
                            self.place = .Freezer
                            ChickenClass.freezerST.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.notUsedST.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.thawST {
                        if nums == eachs {
                            self.place = .Thaw
                            ChickenClass.thawST.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.freezerST.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.breadingST {
                        if nums == eachs {
                            self.place = .Bread
                            ChickenClass.breadingST.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.thawST.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
            }
        case .gFilets:
            if ChickenClass.undoR.isEmpty {}
            else {
            let place = ChickenClass.undoR.last!.place
            let  nums = ChickenClass.undoR.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.notUsedGF {
                        if nums == eachs {
                            self.place = .nones
                            ChickenClass.notUsedGF.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.breadingGF.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.freezerGF {
                        if nums == eachs {
                            self.place = .Freezer
                            ChickenClass.freezerGF.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.notUsedGF.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.thawGF {
                        if nums == eachs {
                            self.place = .Thaw
                            ChickenClass.thawGF.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.freezerGF.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.breadingGF {
                        if nums == eachs {
                            self.place = .Bread
                            ChickenClass.breadingGF.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.thawGF.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
            }
        case .gNugs:
            if ChickenClass.undoR.isEmpty {}
            else {
            let place = ChickenClass.undoR.last!.place
            let  nums = ChickenClass.undoR.last!.nums
                if place == .nones {
                    var i = 0
                    for eachs in ChickenClass.notUsedGN {
                        if nums == eachs {
                            self.place = .nones
                            ChickenClass.notUsedGN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.breadingGN.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Freezer {
                    var i = 0
                    for eachs in ChickenClass.freezerGN {
                        if nums == eachs {
                            self.place = .Freezer
                            ChickenClass.freezerGN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.notUsedGN.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Thaw {
                    var i = 0
                    for eachs in ChickenClass.thawGN {
                        if nums == eachs {
                            self.place = .Thaw
                            ChickenClass.thawGN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.freezerGN.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                    }
                }
                if place == .Bread {
                    var i = 0
                    for eachs in ChickenClass.breadingGN {
                        if nums == eachs {
                            self.place = .Bread
                            ChickenClass.breadingGN.remove(at: i)
                            crit2.removeFirst()
                            ChickenClass.thawGN.append(nums)
                            ChickenClass.undoR.removeLast()
                            
                            return crit2
                        }
                        i += 1
                        }
                    }
                }
            }
        return crit2
        }
    
    func colorChange(button:UIButton,type:ChickenT){
        switch type {
        case .regs:
            if ChickenClass.notUsedR.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.lightGray
            } else if ChickenClass.breadingR.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else if ChickenClass.thawR.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else {
                button.backgroundColor = UIColor.cyan
            }
        case .nugs:
            if ChickenClass.notUsedN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.lightGray
            } else if ChickenClass.breadingN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else if ChickenClass.thawN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else {
                button.backgroundColor = UIColor.cyan
            }
        case .spicy:
            if ChickenClass.notUsedSF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.lightGray
            } else if ChickenClass.breadingSF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else if ChickenClass.thawSF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else {
                button.backgroundColor = UIColor.cyan
            }
        case .strips:
            if ChickenClass.notUsedST.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.lightGray
            } else if ChickenClass.breadingST.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else if ChickenClass.thawST.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else {
                button.backgroundColor = UIColor.cyan
            }
        case .gFilets:
            if ChickenClass.notUsedGF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.lightGray
            } else if ChickenClass.breadingGF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else if ChickenClass.thawGF.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else {
                button.backgroundColor = UIColor.cyan
            }
        case .gNugs:
            if ChickenClass.notUsedGN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.lightGray
            } else if ChickenClass.breadingGN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.green
            } else if ChickenClass.thawGN.contains(Int(button.titleLabel!.text!)!){
                button.backgroundColor = UIColor.yellow
            } else {
                button.backgroundColor = UIColor.cyan
            }
        }
    }
}
