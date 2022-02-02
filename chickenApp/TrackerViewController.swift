//
//  TrackerViewController.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 2/1/22.
//

import UIKit

class TrackerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var chicken:[ChickenClass] = []
    @IBOutlet weak var tableViewOut: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOut.delegate = self
        tableViewOut.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOut.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
        cell.numOut.text = "Case \(chicken[indexPath.row].numberChick)"
        cell.pathOut.text = "Left BT"
        cell.pathOut.text = "Added To Freezer"
         cell.pathOut.text = "Freezer -> TC"
         cell.pathOut.text = "TC -> BT"

         
        return cell
    }

}
