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
        let hour = calendar.component(.hour, from: date!)
        let minute = calendar.component(.minute, from: date!)
        let second = calendar.component(.second, from: date!)
        let day = calendar.component(.day, from: date!)
        let month = calendar.component(.month, from: date!)
        let year = calendar.component(.year, from: date!)
        cell.numOut.text = "Case \(TrackerViewController.chicken[indexPath.row].numberChick)"
        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
        cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
         cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
         cell.pathOut.text = "\(TrackerViewController.chicken[indexPath.row].place)"
        cell.dateOut.text = " \(month)/\(day)/\(year)"
        cell.timeOut.text = "\(hour):\(minute):\(second)"

        return cell
    }

}
