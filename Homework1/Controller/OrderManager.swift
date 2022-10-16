//
//  OrderManager.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 13.10.22.
//

import Foundation

class OrderManager
{
    func fetchingInformation() -> OrderModel? {
        let decoder = JSONDecoder()
        if let jsonData = DummyData.dummyOrders.data(using: .utf8){
            do {
                let orders = try decoder.decode([OrderElement].self, from: jsonData)
                // print(orders.first!.orderDescription)
                // print(orders.first!.ticketTotal.customerTotal)
               // orders.forEach { orders in print(orders.address)}
                let orderDesc = orders.first!.orderDescription
                let address = orders.first!.address
                let total = orders.first!.ticketTotal.subtotal
                
                let myOrders = OrderModel(orderDescription: orderDesc, address: address, ticketTotal: total)
                return myOrders
            } catch {
                print(String(describing: error))
                
            }
            
        }
        return nil
    }
    
   
}
