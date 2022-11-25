//
//  WelcomeViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 21.9.22.
//

import UIKit

class TripsViewController: UIViewController {
    
    @IBOutlet weak var driveScoreView: DriveScoreView!
    @IBOutlet weak var tableView: UITableView!
    let data = [
        ["8.2 Ml in 28 Min 27 sec", " 8.2 Ml in 28 Min 27 sec"],
        ["8.2 Ml in 28 Min 27 sec", "8.2 Ml in 28 Min 27 sec", "8.2 Ml in 28 Min 27 sec"]
    ]
    let data2 = [
        ["98", "93"],
        ["89", "91", "88"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        //register Nib
        tableView.register(UINib(nibName: "ButtonViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 0))
        //header.backgroundColor = .blue
        tableView.tableHeaderView = header
        
        //adding shadow
        //driveScoreView.layer.cornerRadius = 12
       // driveScoreView.layer.masksToBounds = true
        driveScoreView.clipsToBounds = false
        driveScoreView.layer.shadowOffset = CGSize(width: 0, height: 0)
        driveScoreView.layer.shadowOpacity = 0.7
        driveScoreView.layer.shadowRadius = 2.0
        
      
    }
}

extension TripsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data[section].count
    }
    //ask the data source for a cell to insert in a particular locatin
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! ButtonViewCell
        cell.label2?.text = data[indexPath.section][indexPath.row]
        cell.label1?.text = data2[indexPath.section][indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "01/19/2021"
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerFrame = tableView.frame
        
        let title = UILabel()
        title.frame =  CGRect(x: 26, y: -1, width: headerFrame.size.width, height: 20) //width equals to parent view with 10 left and right margin
        title.font = title.font.withSize(13)
        title.textColor = .darkGray
        title.font = UIFont(name: "Avenir", size: 17)
        title.text = self.tableView(tableView, titleForHeaderInSection: section) //This will take title of section from 'titleForHeaderInSection' method or you can write directly
        let headerView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: headerFrame.size.width, height: headerFrame.size.height))
        headerView.addSubview(title)
        
        return headerView
    }
}
extension TripsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueToTripDetails", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
