//
//  ViewController.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

    var chickens:[ChickenClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tButton(_ sender: Any) {
        performSegue(withIdentifier: "cabinetSegue", sender: nil)
    }
    @IBAction func lButton(_ sender: Any) {
        performSegue(withIdentifier: "tracka", sender: nil)
    }
    
    @IBAction func hButton(_ sender: Any) {
        performSegue(withIdentifier: "helpSegue", sender: nil)
    }
}

