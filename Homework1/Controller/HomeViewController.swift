//
//  HomeViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 1.9.22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if ((UserDefaults.standard.string(forKey: "kUserName") != nil) && (UserDefaults.standard.string(forKey: "kPassword") != nil)) {
            
            welcomeLabel.text = "Welcomeee!"
            print("Correct")
            
        } else {
            logOut()
        }
    }
    
    @IBAction func logOutButton(_ sender: UIButton) {
        
        
        logOut()
        
        UserDefaults.standard.removeObject(forKey: "kUserName")
        UserDefaults.standard.removeObject(forKey: "kPassword")
        
        
        
    }
    
    
    func logOut(){
        performSegue(withIdentifier: "logOut", sender: nil)
        
    }
    
}
