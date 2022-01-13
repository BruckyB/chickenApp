//
//  ViewController3.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 1/11/22.
//

import UIKit

class ViewController3: UIViewController {

    var chicken:[ChickenClass] = []
    var chickenType:ChickenT = .regs
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
    @IBOutlet weak var segController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        segController.selectedSegmentIndex = -1
    }
    
    func buttonThing(sender:UIButton,int:Int){
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.gray
        }else {
            sender .backgroundColor = UIColor.green
            chicken.append(ChickenClass(type: chickenType, place: .Freezer,num: int))
        }
    }

    @IBAction func segAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            chickenType = .regs
        case 1:
            chickenType = .nugs
        case 2:
            chickenType = .spicy
        case 3:
            chickenType = .strips
        case 4:
            chickenType = .gFilets
        case 5:
            chickenType = .gNugs
        default:
        print("error in seg controller")
        }
    }
    
    @IBAction func b1(_ sender: UIButton) {
        buttonThing(sender: sender,int: 1)
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
