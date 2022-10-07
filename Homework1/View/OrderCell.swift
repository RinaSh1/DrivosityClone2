//
//  OrderCell.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 7.10.22.
//

import UIKit

class OrderCell: UITableViewCell {

    @IBOutlet weak var myView: UIView!
      
   
      
    
    @IBOutlet weak var goButtonOutlet: UIButton!
    @IBOutlet weak var revieOrderButtonOutlet: UIButton!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBAction func goButton(_ sender: UIButton) {
    }
    
    @IBAction func reviewOrder(_ sender: UIButton) {
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       // myView.layer.masksToBounds = true
        myView.layer.cornerRadius = myView.frame.size.height / 22
        myView.layer.shadowColor = CGColor.init(gray: 1.0, alpha: 1.0)
        myView.layer.shadowOffset = CGSize(width: 0, height: 0)
       // myView.layer.shadowOpacity = opacity
        myView.layer.masksToBounds = false
        

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    
}
