//
//  SettingsViewController.swift
//  Homework1
//
//  Created by Rina Shabani on 20.10.22.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    @IBOutlet weak var logOut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logOut(_ sender: UIButton) {
    do {
        try Auth.auth().signOut()
        UserDefaults.standard.removeObject(forKey: "userID")
      //  navigationController?.popViewController(animated: true)
        dismiss(animated: false, completion: nil)

    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
        print("Error signing out: %@")
    }
      
    }
}
