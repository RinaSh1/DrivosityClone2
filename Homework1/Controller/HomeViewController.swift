//
//  HomeViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 1.9.22.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    @IBOutlet weak var returnToStoreOutlet: UIButton!
    @IBOutlet weak var reviewButtonOutlet: UIButton!
    @IBOutlet weak var tableView: UITableView!
 
    var dummyData = DummyData()
    var orders: [OrderModel] = []
    var orderC = OrderManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.register(UINib(nibName: "OrderCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        let cellNib = UINib(nibName: "OrderCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "myCell")
        print("this is home screen")
        tableView.dataSource = self
        self.parent?.title = "Orders"
        //  print(orderC.fetchingInformation()!)
        //  print(fetchingInformation())
        
        reviewButtonOutlet.layer.cornerRadius = 10
        returnToStoreOutlet.layer.cornerRadius = 10
        
        
    }
    
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return orders.count
        return 2
        
        
    }
    //ask the data source for a cell to insert in a particular locatin
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! OrderCell
        
        
        return cell
    }
    
    
}


