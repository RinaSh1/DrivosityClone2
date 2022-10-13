//
//  OrderCell.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 7.10.22.
//

import UIKit

class OrderCell: UITableViewCell {
    
    var dummyData = DummyData()
    
    
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
    func fetchingInformation()  {
        let decoder = JSONDecoder()
        if let jsonData = DummyData.dummyOrders.data(using: .utf8){
            do {
                let orders = try decoder.decode([OrderElement].self, from: jsonData)
                 print(orders.first!.orderDescription)
                 print(orders.first!.ticketTotal.customerTotal)
                orders.forEach { orders in print(orders.address)}
              //  let orderDesc = orders.first!.orderDescription
                //let id = orders.first!.id
                
             //   let myOrders = OrderModel(orderDescription: orderDesc, id: id)
                
            } catch {
                print(String(describing: error))
                
            }
            
        }
    }
    
}
