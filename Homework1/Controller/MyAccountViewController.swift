//
//  MyAccountViewController.swift
//  Homework1
//
//  Created by Rina Shabani on 25.10.22.
//

import UIKit
import Cosmos

class MyAccountViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var starView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.layer.cornerRadius = 12
        myView.layer.masksToBounds = false
        myView.layer.shadowOffset = CGSize(width: 0, height: 0)
        myView.layer.shadowOpacity = 0.7
        myView.layer.shadowRadius = 2.0
        view1.layer.cornerRadius = 12
        view1.layer.masksToBounds = false
        view1.layer.shadowOffset = CGSize(width: 0, height: 0)
        view1.layer.shadowOpacity = 0.7
        view1.layer.shadowRadius = 2.0
        view2.layer.cornerRadius = 12
        view2.layer.masksToBounds = false
        view2.layer.shadowOffset = CGSize(width: 0, height: 0)
        view2.layer.shadowOpacity = 0.7
        view2.layer.shadowRadius = 2.0
        view3.layer.cornerRadius = 12
        view3.layer.masksToBounds = false
        view3.layer.shadowOffset = CGSize(width: 0, height: 0)
        view3.layer.shadowOpacity = 0.7
        view3.layer.shadowRadius = 2.0
        view4.layer.cornerRadius = 12
        view4.layer.masksToBounds = false
        view4.layer.shadowOffset = CGSize(width: 0, height: 0)
        view4.layer.shadowOpacity = 0.7
        view4.layer.shadowRadius = 2.0
        view5.layer.cornerRadius = 12
        view5.layer.masksToBounds = false
        view5.layer.shadowOffset = CGSize(width: 0, height: 0)
        view5.layer.shadowOpacity = 0.7
        view5.layer.shadowRadius = 2.0
        
        view6.layer.cornerRadius = 12
        view6.layer.masksToBounds = false
        view6.layer.shadowOffset = CGSize(width: 0, height: 0)
        view6.layer.shadowOpacity = 0.7
        view6.layer.shadowRadius = 2
      
        myImage.layer.masksToBounds = false
        myImage.layer.borderWidth = 1
        myImage.layer.borderColor = UIColor.lightGray.cgColor
        myImage.layer.cornerRadius = myImage.bounds.height/2
        myImage.layer.shadowColor = UIColor.gray.cgColor
        myImage.clipsToBounds = true
     
        
    }
    
}
