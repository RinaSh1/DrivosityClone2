//
//  ButtonViewCell.swift
//  Homework1
//
//  Created by Rina Shabani on 23.11.22.
//

import UIKit

class ButtonViewCell: UITableViewCell {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myView.layer.cornerRadius = 10
        myView.layer.masksToBounds = false
        myView.layer.shadowOffset = CGSize(width: 0, height: 0)
        myView.layer.shadowOpacity = 0.7
        myView.layer.shadowRadius = 2.0
    }


    
}
