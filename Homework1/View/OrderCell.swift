//
//  OrderCell.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 7.10.22.
//

import UIKit

class OrderCell: UITableViewCell {
    
    var dummyData = DummyData()
    var homeVC = HomeViewController()
    //  var orderManager = OrderManager()
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var goButtonOutlet: UIButton!
    @IBOutlet weak var revieOrderButtonOutlet: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBAction func goButton(_ sender: UIButton) {
    }
    
    @IBAction func reviewOrder(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myView.layer.cornerRadius = 12
        myView.layer.masksToBounds = false
        myView.layer.shadowOffset = CGSize(width: 0, height: 0)
        myView.layer.shadowOpacity = 0.7
        myView.layer.shadowRadius = 2.0
        
        //
        revieOrderButtonOutlet.layer.masksToBounds = true
        revieOrderButtonOutlet.layer.cornerRadius = 0
        
        
        //
        revieOrderButtonOutlet.clipsToBounds = true
        revieOrderButtonOutlet.layer.cornerRadius = 10
        revieOrderButtonOutlet.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
        //
        goButtonOutlet.layer.cornerRadius = 12
        goButtonOutlet.layer.masksToBounds = false
        goButtonOutlet.layer.shadowOffset = CGSize(width: 0, height: 0)
        goButtonOutlet.layer.shadowOpacity = 0.7
        goButtonOutlet.layer.shadowRadius = 2.0
        //  UpdateUserInterface()
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    /* func UpdateUserInterface(){
     
     if let order = orderManager.fetchingInformation(){
     didUpdateOrder(order: order, ordeManager: orderManager)
     }
     
     }
     func didUpdateOrder(order: OrderModel){
     label1.text = order.orderDescription
     label2.text = order.address
     totalPriceLabel.text = order.ticketTotal
     
     }
     */
}

