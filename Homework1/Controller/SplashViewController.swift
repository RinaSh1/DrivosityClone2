//
//  SplashViewController.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 27.9.22.
//

import UIKit
import Firebase

class SplashViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let userDefault = UserDefaults.standard
        
        let isLogedIn = userDefault.string(forKey: "userID")
        if(isLogedIn != nil) {
            performSegue(withIdentifier: "ShowHomeSegue", sender: nil)
        }else{
            performSegue(withIdentifier: "ShowAuthenticationSegue", sender: nil)
        }
    }
}
