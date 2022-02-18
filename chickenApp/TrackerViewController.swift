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
    var type:ChickenT = .regs
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOut.delegate = self
        tableViewOut.dataSource = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        while TrackerViewController.chicken.count > 100 {
            TrackerViewController.chicken.removeLast()
        }
        return TrackerViewController.chicken.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOut.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
        let date = TrackerViewController.chicken[indexPath.row].time.first
        place = TrackerViewController.chicken[indexPath.row].place
        type = TrackerViewController.chicken[indexPath.row].type
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
        switch type {
            case .regs:
                cell.numOut.text = "Regs Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
            case .nugs:
                cell.numOut.text = "Nugs Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
            case .spicy:
                cell.numOut.text = "Spicy Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
            case .strips:
                cell.numOut.text = "Strips Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
            case .gNugs:
                cell.numOut.text = "GNugs Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
            case .gFilets:
                cell.numOut.text = "GFilets Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
        }
        cell.dateOut.text = " \(month)/\(day)/\(year)"
        return cell
    }

}
