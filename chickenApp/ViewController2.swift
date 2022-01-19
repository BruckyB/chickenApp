//
//  ViewController2.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 1/11/22.
//

import UIKit

class ViewController2: UIViewController {

    var chicken:[ChickenClass] = []
    var buttonArray:[UIButton] = []
    @IBOutlet weak var b1b: UIButton!
    @IBOutlet weak var b2b: UIButton!
    @IBOutlet weak var b3b: UIButton!
    @IBOutlet weak var b4b: UIButton!
    @IBOutlet weak var b5b: UIButton!
    @IBOutlet weak var b6b: UIButton!
    @IBOutlet weak var b7b: UIButton!
    @IBOutlet weak var b8b: UIButton!
    @IBOutlet weak var b9b: UIButton!
    @IBOutlet weak var b10b: UIButton!
    @IBOutlet weak var b11b: UIButton!
    @IBOutlet weak var b12b: UIButton!
    @IBOutlet weak var b13b: UIButton!
    @IBOutlet weak var b14b: UIButton!
    @IBOutlet weak var b15b: UIButton!
    @IBOutlet weak var b16b: UIButton!
    @IBOutlet weak var b17b: UIButton!
    @IBOutlet weak var b18b: UIButton!
    @IBOutlet weak var b19b: UIButton!
    @IBOutlet weak var b20b: UIButton!
    @IBOutlet weak var b21b: UIButton!
    @IBOutlet weak var b22b: UIButton!
    @IBOutlet weak var b23b: UIButton!
    @IBOutlet weak var b24b: UIButton!
    @IBOutlet weak var b25b: UIButton!
    @IBOutlet weak var b26b: UIButton!
    @IBOutlet weak var b27b: UIButton!
    @IBOutlet weak var b28b: UIButton!
    @IBOutlet weak var b29b: UIButton!
    @IBOutlet weak var b30b: UIButton!
    @IBOutlet weak var b31b: UIButton!
    @IBOutlet weak var b32b: UIButton!
    @IBOutlet weak var b33b: UIButton!
    @IBOutlet weak var b34b: UIButton!
    @IBOutlet weak var b35b: UIButton!
    @IBOutlet weak var b36b: UIButton!
    @IBOutlet weak var b37b: UIButton!
    @IBOutlet weak var b38b: UIButton!
    @IBOutlet weak var b39b: UIButton!
    @IBOutlet weak var b40b: UIButton!
    @IBOutlet weak var b41b: UIButton!
    @IBOutlet weak var b42b: UIButton!
    @IBOutlet weak var b43b: UIButton!
    @IBOutlet weak var b44b: UIButton!
    @IBOutlet weak var b45b: UIButton!
    @IBOutlet weak var b46b: UIButton!
    @IBOutlet weak var b47b: UIButton!
    @IBOutlet weak var b48b: UIButton!
    @IBOutlet weak var b49b: UIButton!
    @IBOutlet weak var b50b: UIButton!
    var chickenType:ChickenT = .regs
    @IBOutlet weak var segController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        segController.selectedSegmentIndex = -1
        buttonArray.append(b1b)
        buttonArray.append(b2b)
        buttonArray.append(b3b)
        buttonArray.append(b4b)
        buttonArray.append(b5b)
        buttonArray.append(b6b)
        buttonArray.append(b7b)
        buttonArray.append(b8b)
        buttonArray.append(b9b)
        buttonArray.append(b10b)
        buttonArray.append(b11b)
        buttonArray.append(b12b)
        buttonArray.append(b13b)
        buttonArray.append(b14b)
        buttonArray.append(b15b)
        buttonArray.append(b16b)
        buttonArray.append(b17b)
        buttonArray.append(b18b)
        buttonArray.append(b19b)
        buttonArray.append(b20b)
        buttonArray.append(b21b)
        buttonArray.append(b22b)
        buttonArray.append(b23b)
        buttonArray.append(b24b)
        buttonArray.append(b25b)
        buttonArray.append(b26b)
        buttonArray.append(b27b)
        buttonArray.append(b28b)
        buttonArray.append(b29b)
        buttonArray.append(b30b)
        buttonArray.append(b31b)
        buttonArray.append(b32b)
        buttonArray.append(b33b)
        buttonArray.append(b34b)
        buttonArray.append(b35b)
        buttonArray.append(b36b)
        buttonArray.append(b37b)
        buttonArray.append(b38b)
        buttonArray.append(b39b)
        buttonArray.append(b40b)
        buttonArray.append(b41b)
        buttonArray.append(b42b)
        buttonArray.append(b43b)
        buttonArray.append(b44b)
        buttonArray.append(b45b)
        buttonArray.append(b46b)
        buttonArray.append(b47b)
        buttonArray.append(b48b)
        buttonArray.append(b49b)
        buttonArray.append(b50b)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        segController.selectedSegmentIndex = -1
    }
    
    func buttonThing(sender:UIButton,int:Int) {
         if sender.backgroundColor == UIColor.green {
             sender.backgroundColor = UIColor.gray
         }else {
             sender .backgroundColor = UIColor.green
             chicken.append(ChickenClass(type: chickenType, place: .Freezer,num: int))
         }
     }
    
    func diffrentColor(types:ChickenT){
        for blah in buttonArray {
            if let car = chicken.first{
                car.colorChange(button: blah, type: types)
            }
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
