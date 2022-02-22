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

            
            print("oh yea")
        }))

    }
    
    @IBAction func clearButton(_ sender: Any) {
        present(alert, animated: true, completion: nil)
    }
    
}
