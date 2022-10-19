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
    var orders: [OrderElement] = []
    //  var orderC = OrderManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        let decoder = JSONDecoder()
        if let jsonData = DummyData.dummyOrders.data(using: .utf8){
            do {
                orders = try decoder.decode([OrderElement].self, from: jsonData)}
            catch {
                print(String(describing: error))
            }
        }

        //tableView.register(UINib(nibName: "OrderCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        let cellNib = UINib(nibName: "OrderCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "myCell")
        print("this is home screen")
        tableView.dataSource = self
        tableView.delegate = self

        
        //  print(orderC.fetchingInformation()!)
        //  print(fetchingInformation())
        reviewButtonOutlet.layer.cornerRadius = 10
        returnToStoreOutlet.layer.cornerRadius = 10
        // self.parent?.title = "Orders"
       // navigationController?.navigationBar.topItem?.title = "Orders"
        
        //add right image to button
        returnToStoreOutlet.semanticContentAttribute = .forceLeftToRight
        //shadow to the reviewButton
        reviewButtonOutlet.layer.masksToBounds = false
        reviewButtonOutlet.layer.shadowOffset = CGSize(width: 0, height: 0)
        reviewButtonOutlet.layer.shadowOpacity = 0.7
        reviewButtonOutlet.layer.shadowRadius = 2.0
        
     

    }
    
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return orders.count
   
        
        
    }
    //ask the data source for a cell to insert in a particular locatin
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! OrderCell
        cell.label1.text = orders[indexPath.row].orderDescription
        cell.label2.text = orders[indexPath.row].address
        cell.totalPriceLabel.text = orders[indexPath.row].ticketTotal.customerTotal
        return cell
    }
    
    
}
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}

