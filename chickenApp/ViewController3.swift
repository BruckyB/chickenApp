//
//  ViewController3.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 1/11/22.
//

import UIKit

class ViewController3: UIViewController {

    var chicken:[ChickenClass] = []
    var buttonArray:[UIButton] = []
    var chickenType:ChickenT = .regs
    @IBOutlet weak var segController: UISegmentedControl!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b16: UIButton!
    @IBOutlet weak var b17: UIButton!
    @IBOutlet weak var b18: UIButton!
    @IBOutlet weak var b19: UIButton!
    @IBOutlet weak var b20: UIButton!
    @IBOutlet weak var b21: UIButton!
    @IBOutlet weak var b22: UIButton!
    @IBOutlet weak var b23: UIButton!
    @IBOutlet weak var b24: UIButton!
    @IBOutlet weak var b25: UIButton!
    @IBOutlet weak var b26: UIButton!
    @IBOutlet weak var b27: UIButton!
    @IBOutlet weak var b28: UIButton!
    @IBOutlet weak var b29: UIButton!
    @IBOutlet weak var b30: UIButton!
    @IBOutlet weak var b31: UIButton!
    @IBOutlet weak var b32: UIButton!
    @IBOutlet weak var b33: UIButton!
    @IBOutlet weak var b34: UIButton!
    @IBOutlet weak var b35: UIButton!
    @IBOutlet weak var b36: UIButton!
    @IBOutlet weak var b37: UIButton!
    @IBOutlet weak var b38: UIButton!
    @IBOutlet weak var b39: UIButton!
    @IBOutlet weak var b40: UIButton!
    @IBOutlet weak var b41: UIButton!
    @IBOutlet weak var b42: UIButton!
    @IBOutlet weak var b43: UIButton!
    @IBOutlet weak var b44: UIButton!
    @IBOutlet weak var b45: UIButton!
    @IBOutlet weak var b46: UIButton!
    @IBOutlet weak var b47: UIButton!
    @IBOutlet weak var b48: UIButton!
    @IBOutlet weak var b49: UIButton!
    @IBOutlet weak var b50: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonArray.append(b1)
        buttonArray.append(b2)
        buttonArray.append(b3)
        buttonArray.append(b4)
        buttonArray.append(b5)
        buttonArray.append(b6)
        buttonArray.append(b7)
        buttonArray.append(b8)
        buttonArray.append(b9)
        buttonArray.append(b10)
        buttonArray.append(b11)
        buttonArray.append(b12)
        buttonArray.append(b13)
        buttonArray.append(b14)
        buttonArray.append(b15)
        buttonArray.append(b16)
        buttonArray.append(b17)
        buttonArray.append(b18)
        buttonArray.append(b19)
        buttonArray.append(b20)
        buttonArray.append(b21)
        buttonArray.append(b22)
        buttonArray.append(b23)
        buttonArray.append(b24)
        buttonArray.append(b25)
        buttonArray.append(b26)
        buttonArray.append(b27)
        buttonArray.append(b28)
        buttonArray.append(b29)
        buttonArray.append(b30)
        buttonArray.append(b31)
        buttonArray.append(b32)
        buttonArray.append(b33)
        buttonArray.append(b34)
        buttonArray.append(b35)
        buttonArray.append(b36)
        buttonArray.append(b37)
        buttonArray.append(b38)
        buttonArray.append(b39)
        buttonArray.append(b40)
        buttonArray.append(b41)
        buttonArray.append(b42)
        buttonArray.append(b43)
        buttonArray.append(b44)
        buttonArray.append(b45)
        buttonArray.append(b46)
        buttonArray.append(b47)
        buttonArray.append(b48)
        buttonArray.append(b49)
        buttonArray.append(b50)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        segController.selectedSegmentIndex = -1
    }
    
    func buttonThing(sender:UIButton,int:Int){
        if sender.backgroundColor == UIColor.yellow {
            sender.backgroundColor = UIColor.green
        //    chicken.changeLocation(place: .Bread, num: int)
        }
    }
    
    func diffrentColor(types:ChickenT){
        for blah in buttonArray {
        var blahs = ChickenClass(type: .nugs, place: .nones, num: 0)
                blahs.colorChange(button: blah, type: types)
        }
    }

    @IBAction func segAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            chickenType = .regs
            diffrentColor(types: .regs)
        case 1:
            chickenType = .nugs
            diffrentColor(types: .nugs)
        case 2:
            chickenType = .spicy
            diffrentColor(types: .spicy)
        case 3:
            chickenType = .strips
            diffrentColor(types: .strips)
        case 4:
            chickenType = .gFilets
            diffrentColor(types: .gFilets)
        case 5:
            chickenType = .gNugs
            diffrentColor(types: .gNugs)
        default:
        print("error in seg controller")
        }
    }
    
    @IBAction func b1(_ sender: UIButton) {
        buttonThing(sender: sender,int: 1)
        print(ChickenClass.breadingR)
        print(ChickenClass.breadingN)
        print(ChickenClass.breadingSF)
        print(ChickenClass.breadingST)
        print(ChickenClass.breadingGF)
        print(ChickenClass.breadingGN)
        print(ChickenClass.thawR)
        print(ChickenClass.thawN)
        print(ChickenClass.thawSF)
        print(ChickenClass.thawST)
        print(ChickenClass.thawGF)
        print(ChickenClass.thawGN)
        print(ChickenClass.freezerR)
        print(ChickenClass.freezerN)
        print(ChickenClass.freezerSF)
        print(ChickenClass.freezerST)
        print(ChickenClass.freezerGF)
        print(ChickenClass.freezerGN)
        print(ChickenClass.notUsedR)
        print(ChickenClass.notUsedN)
        print(ChickenClass.notUsedSF)
        print(ChickenClass.notUsedST)
        print(ChickenClass.notUsedGF)
        print(ChickenClass.notUsedGN)
    }
    @IBAction func b2(_ sender: UIButton) {
        buttonThing(sender: sender,int: 2)
    }
    @IBAction func b3(_ sender: UIButton) {
        buttonThing(sender: sender,int: 3)
    }
    @IBAction func b4(_ sender: UIButton) {
        buttonThing(sender: sender,int: 4)
    }
    @IBAction func b5(_ sender: UIButton) {
        buttonThing(sender: sender,int: 5)
    }
    @IBAction func b6(_ sender: UIButton) {
        buttonThing(sender: sender,int: 6)
    }
    @IBAction func b7(_ sender: UIButton) {
        buttonThing(sender: sender,int: 7)
    }
    @IBAction func b8(_ sender: UIButton) {
        buttonThing(sender: sender,int: 8)
    }
    @IBAction func b9(_ sender: UIButton) {
        buttonThing(sender: sender,int: 9)
    }
    @IBAction func b10(_ sender: UIButton) {
        buttonThing(sender: sender,int: 10)
    }
    @IBAction func b11(_ sender: UIButton) {
        buttonThing(sender: sender,int: 11)
    }
    @IBAction func b12(_ sender: UIButton) {
        buttonThing(sender: sender,int: 12)
    }
    @IBAction func b13(_ sender: UIButton) {
        buttonThing(sender: sender,int: 13)
    }
    @IBAction func b14(_ sender: UIButton) {
        buttonThing(sender: sender,int: 14)
    }
    @IBAction func b15(_ sender: UIButton) {
        buttonThing(sender: sender,int: 15)
    }
    @IBAction func b16(_ sender: UIButton) {
        buttonThing(sender: sender,int: 16)
    }
    @IBAction func b17(_ sender: UIButton) {
        buttonThing(sender: sender,int: 17)
    }
    @IBAction func b18(_ sender: UIButton) {
        buttonThing(sender: sender,int: 18)
    }
    @IBAction func b19(_ sender: UIButton) {
        buttonThing(sender: sender,int: 19)
    }
    @IBAction func b20(_ sender: UIButton) {
        buttonThing(sender: sender,int: 20)
    }
    @IBAction func b21(_ sender: UIButton) {
        buttonThing(sender: sender,int: 21)
    }
    @IBAction func b22(_ sender: UIButton) {
        buttonThing(sender: sender,int: 22)
    }
    @IBAction func b23(_ sender: UIButton) {
        buttonThing(sender: sender,int: 23)
    }
    @IBAction func b24(_ sender: UIButton) {
        buttonThing(sender: sender,int: 24)
    }
    @IBAction func b25(_ sender: UIButton) {
        buttonThing(sender: sender,int: 25)
    }
    @IBAction func b26(_ sender: UIButton) {
        buttonThing(sender: sender,int: 26)
    }
    @IBAction func b27(_ sender: UIButton) {
        buttonThing(sender: sender,int: 27)
    }
    @IBAction func b28(_ sender: UIButton) {
        buttonThing(sender: sender,int: 28)
    }
    @IBAction func b29(_ sender: UIButton) {
        buttonThing(sender: sender,int: 29)
    }
    @IBAction func b30(_ sender: UIButton) {
        buttonThing(sender: sender,int: 30)
    }
    @IBAction func b31(_ sender: UIButton) {
        buttonThing(sender: sender,int: 31)
    }
    @IBAction func b32(_ sender: UIButton) {
        buttonThing(sender: sender,int: 32)
    }
    @IBAction func b33(_ sender: UIButton) {
        buttonThing(sender: sender,int: 33)
    }
    @IBAction func b34(_ sender: UIButton) {
        buttonThing(sender: sender,int: 34)
    }
    @IBAction func b35(_ sender: UIButton) {
        buttonThing(sender: sender,int: 35)
    }
    @IBAction func b36(_ sender: UIButton) {
        buttonThing(sender: sender,int: 36)
    }
    @IBAction func b37(_ sender: UIButton) {
        buttonThing(sender: sender,int: 37)
    }
    @IBAction func b38(_ sender: UIButton) {
        buttonThing(sender: sender,int: 38)
    }
    @IBAction func b39(_ sender: UIButton) {
        buttonThing(sender: sender,int: 39)
    }
    @IBAction func b40(_ sender: UIButton) {
        buttonThing(sender: sender,int: 40)
    }
    @IBAction func b41(_ sender: UIButton) {
        buttonThing(sender: sender,int: 41)
    }
    @IBAction func b42(_ sender: UIButton) {
        buttonThing(sender: sender,int: 42)
    }
    @IBAction func b43(_ sender: UIButton) {
        buttonThing(sender: sender,int: 43)
    }
    @IBAction func b44(_ sender: UIButton) {
        buttonThing(sender: sender,int: 44)
    }
    @IBAction func b45(_ sender: UIButton) {
        buttonThing(sender: sender,int: 45)
    }
    @IBAction func b46(_ sender: UIButton) {
        buttonThing(sender: sender,int: 46)
    }
    @IBAction func b47(_ sender: UIButton) {
        buttonThing(sender: sender,int: 47)
    }
    @IBAction func b48(_ sender: UIButton) {
        buttonThing(sender: sender,int: 48)
    }
    @IBAction func b49(_ sender: UIButton) {
        buttonThing(sender: sender,int: 49)
    }
    @IBAction func b50(_ sender: UIButton) {
        buttonThing(sender: sender,int: 50)
    }
}
