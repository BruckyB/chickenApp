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
        
        return cell
    }

}
