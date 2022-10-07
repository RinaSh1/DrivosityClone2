//
//  HomeViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 1.9.22.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.register(UINib(nibName: "OrderCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        let cellNib = UINib(nibName: "OrderCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "myCell")
        print("this is home screen")
        tableView.dataSource = self
        
    }
    
    // @IBAction func logOutButton(_ sender: UIButton) {
    
    
    //   let firebaseAuth = Auth.auth()
    // do {
    //   try firebaseAuth.signOut()
    
    // navigationController!.popToRootViewController(animated: true)
    
    //} catch let signOutError as NSError {
    //  print("Error signing out: %@", signOutError)
    //}
    
    //}
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    //ask the data source for a cell to insert in a particular locatin
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! OrderCell
       // cell.label3.text = "hello"
    
        return cell
    }
}
