//
//  SplashViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 27.9.22.
//

import UIKit
import Firebase

class SplashViewController: UIViewController {
    
    var isLogedIn = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Logic of login
        if !isLogedIn && UserDefaults.standard.string(forKey: "userID") != nil{
            performSegue(withIdentifier: "ShowHomeSegue", sender: nil)
            // Check if we have saved token on preference
            print("correct!")
        }
       
        
    }
}
