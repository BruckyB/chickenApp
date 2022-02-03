//
//  TrackerViewController.swift
//  chickenApp
//
//  Created by JOHN BRUCKER on 2/1/22.
//

import UIKit

class TrackerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
     static var chicken:[ChickenClass] = []
    @IBOutlet weak var tableViewOut: UITableView!
    let calendar = Calendar.current
    
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
        let date = TrackerViewController.chicken[indexPath.row].time.last
        
        let hour = calendar.component(.hour, from: date!)
        let minute = calendar.component(.minute, from: date!)
        let second = calendar.component(.second, from: date!)
        let day = calendar.component(.day, from: date!)
        let month = calendar.component(.month, from: date!)
        let year = calendar.component(.year, from: date!)
        if hour < 10 {
            cell.timeOut.text = "0\(hour):"
            //cell.timeOut.text = "0\(hour):\(minute):\(second)"
        } else {
            cell.timeOut.text = "\(hour):"
            //cell.timeOut.text = "\(hour):\(minute):\(second)"
        }
        if minute < 10 {
            cell.timeOut.text = cell.timeOut.text! + "0\(minute):"
            //cell.timeOut.text = "\(hour):0\(minute):\(second)"
        } else {
            cell.timeOut.text = cell.timeOut.text! + "\(minute):"
            //cell.timeOut.text = "\(hour):\(minute):\(second)"
        }
        if second < 10 {
            cell.timeOut.text = cell.timeOut.text! + "0\(second)"
            //cell.timeOut.text = "\(hour):\(minute):0\(second)"
        } else {
            cell.timeOut.text = cell.timeOut.text! + "\(second)"
            //cell.timeOut.text = "\(hour):\(minute):\(second)"
        }
        cell.numOut.text = "Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
         cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
         cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
        cell.dateOut.text = " \(month)/\(day)/\(year)"
        

        return cell
    }

}
