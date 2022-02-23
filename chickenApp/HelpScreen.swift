//
//  HelpScreen.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 1/21/22.
//

import UIKit

class HelpScreen: UIViewController {

    var alert = UIAlertController(title: "WARNING", message: "This will erase everythig you have saved. Are you sure?", preferredStyle: .alert)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {_ in
            print("balls")
        }))
        
        alert.addAction(UIAlertAction(title: "I am sure", style: UIAlertAction.Style.destructive, handler: {(_: UIAlertAction!) in
            ViewController3.chicken.removeAll()
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(ViewController3.chicken) {
                    UserDefaults.standard.set(encoded, forKey: "SDATA")
            }
            ChickenClass.notUsedR.removeAll()
            ChickenClass.notUsedN.removeAll()
            ChickenClass.notUsedSF.removeAll()
            ChickenClass.notUsedST.removeAll()
            ChickenClass.notUsedGF.removeAll()
            ChickenClass.notUsedGN.removeAll()
            
            ChickenClass.freezerR.removeAll()
            ChickenClass.freezerN.removeAll()
            ChickenClass.freezerSF.removeAll()
            ChickenClass.freezerST.removeAll()
            ChickenClass.freezerGF.removeAll()
            ChickenClass.freezerGN.removeAll()
            
            ChickenClass.thawR.removeAll()
            ChickenClass.thawN.removeAll()
            ChickenClass.thawSF.removeAll()
            ChickenClass.thawST.removeAll()
            ChickenClass.thawGF.removeAll()
            ChickenClass.thawGN.removeAll()
            
            ChickenClass.breadingR.removeAll()
            ChickenClass.breadingN.removeAll()
            ChickenClass.breadingSF.removeAll()
            ChickenClass.breadingST.removeAll()
            ChickenClass.breadingGF.removeAll()
            ChickenClass.breadingGN.removeAll()
            
            ChickenClass.notUsedR = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
            ChickenClass.notUsedN = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
            ChickenClass.notUsedSF = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
            ChickenClass.notUsedST = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
            ChickenClass.notUsedGF = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
            ChickenClass.notUsedGN =
            [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
            print("blah")
            print("oh yea")
        }))

    }
    
    @IBAction func clearButton(_ sender: Any) {
        present(alert, animated: true, completion: nil)
        print(ChickenClass.freezerR)
        print(ChickenClass.freezerN)
        print(ChickenClass.freezerSF)
        print(ChickenClass.freezerST)
        print(ChickenClass.freezerGF)
        print(ChickenClass.freezerGN)
        
        print(ChickenClass.thawR)
        print(ChickenClass.thawN)
        print(ChickenClass.thawSF)
        print(ChickenClass.thawST)
        print(ChickenClass.thawGF)
        print(ChickenClass.thawN)
        
        print(ChickenClass.breadingR)
        print(ChickenClass.breadingN)
        print(ChickenClass.breadingSF)
        print(ChickenClass.breadingST)
        print(ChickenClass.breadingGF)
        print(ChickenClass.breadingGN)
        
        print(ChickenClass.notUsedR)
        print(ChickenClass.notUsedN)
        print(ChickenClass.notUsedSF)
        print(ChickenClass.notUsedST)
        print(ChickenClass.notUsedGF)
        print(ChickenClass.notUsedGN)
    }
    
}
