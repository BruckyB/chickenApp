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
    var place:placeT = .nones
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOut.delegate = self
        tableViewOut.dataSource = self
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
            if let item  = UserDefaults.standard.data(forKey: "SDATA2"){
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([ChickenClass].self, from: item){
            TrackerViewController.chicken = decoded
            }
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(TrackerViewController.chicken) {
                UserDefaults.standard.set(encoded, forKey: "SDATA2")
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TrackerViewController.chicken.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOut.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
        let date = TrackerViewController.chicken[indexPath.row].time.last
        place = TrackerViewController.chicken[indexPath.row].place
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
        switch  place {
                case .nones:
                cell.pathOut.text = " BT -> \(TrackerViewController.chicken[indexPath.row].place)"
                case .Freezer:
                cell.pathOut.text = " N/A -> \(TrackerViewController.chicken[indexPath.row].place)"
                case .Thaw:
                cell.pathOut.text = " F -> \(TrackerViewController.chicken[indexPath.row].place)"
                case .Bread:
                cell.pathOut.text = " T -> \(TrackerViewController.chicken[indexPath.row].place)"
            }
        cell.numOut.text = "Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
//        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
//        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
//        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
//        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
        cell.dateOut.text = " \(month)/\(day)/\(year)"
        return cell
    }

}
