//
//  ViewController3.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 1/11/22.
//

import UIKit

class ViewController3: UIViewController {

    var chicken:[ChickenClass] = []
    
    @IBOutlet weak var segController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        segController.selectedSegmentIndex = -1
    }

    @IBAction func segAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            chicken.append(ChickenClass(type: .regs, place: .Freezer))
        case 1:
            chicken.append(ChickenClass(type: .nugs, place: .Freezer))
        case 2:
            chicken.append(ChickenClass(type: .spicy, place: .Freezer))
        case 3:
            chicken.append(ChickenClass(type: .strips, place: .Freezer))
        case 4:
            chicken.append(ChickenClass(type: .gFilets, place: .Freezer))
        case 5:
            chicken.append(ChickenClass(type: .gNugs, place: .Freezer))
        default:
        print("error in seg controller")
        }
    }
    
    @IBAction func b1(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b2(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b3(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b4(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b5(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b6(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b7(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b8(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b9(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b10(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b11(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b12(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b13(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b14(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b15(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b16(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b17(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b18(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b19(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b20(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b21(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b22(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b23(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b24(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b25(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b26(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b27(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b28(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b29(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b30(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b31(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b32(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b33(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b34(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b35(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b36(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b37(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b38(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b39(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b40(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b41(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b42(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b43(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b44(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b45(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b46(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b47(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b48(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b49(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
    @IBAction func b50(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        }else {
            sender .backgroundColor = UIColor.green
        }
    }
}
