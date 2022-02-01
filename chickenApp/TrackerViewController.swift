//
//  TrackerViewController.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 2/1/22.
//

import UIKit

class TrackerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewOut: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOut.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
        cell.numOut.text = "Case \(1)"
        /*
         if cimken.path = 0 {
         cell.pathOut.text = "Left BT"
         } else if cimken.path = 1 {
        cell.pathOut.text = "Added To Freezer"
         } else if cimken.path = 2 {
         cell.pathOut.text = "Freezer -> TC"
         } else if cimken.path = 3 {
         cell.pathOut.text = "TC -> BT"
         }
         */
         
        return cell
    }

}
