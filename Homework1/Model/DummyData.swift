//
//  DummyData.swift
//  Homework1
//
//  Created by Drivosity Tetovo on 9.10.22.
//
import Foundation
import UIKit
// swiftlint:disable all
class DummyData: NSObject{
    private static var firstLocation: [Double] = [
        42.055152, 21.035469
    ]
    private static var secondLocation: [Double] = [
        41.988077, 20.959395
    ]
    private static var thirdLocation: [Double] = [
        ///
        42.006912, 20.971527
    ]
    
    static var dummyOrders: String {
        get {
            return "[\r\n      {\r\n        \"_id\": \"5d7b4eb0dcb09747af97241e\",\r\n        \"StoreId\": 643,\r\n        \"TaskId\": 108410386,\r\n        \"Color\": \"DRIVER\",\r\n        \"Status\": \"PENDING\",\r\n        \"ForeignId\": \"643\",\r\n        \"ForeignAgentId\": 593430,\r\n        \"Lat\": 42.007841,\r\n        \"Lng\": 20.976981,\r\n        \"Address\": \"Tetovo center\",\r\n        \"Description\": \"Test1, Test 2, Test 3\",\r\n        \"OrderRank\": 1,\r\n        \"DueTime\": 1568362080000,\r\n        \"CreatedTime\": 1568362155459,\r\n        \"AssignedTime\": 1568362155458,\r\n        \"PlanAhead\": false,\r\n        \"SessionAssignTime\": null,\r\n        \"UserId\": 39035,\r\n        \"DeviceHash\": \"pc0d6b9\",\r\n        \"ToBeDeleted\": \"2019-09-13T12:00:00.000Z\",\r\n        \"DestinationAddress\": {\r\n          \"address1\": \"Blagoja Toska\",\r\n          \"address2\": \"\",\r\n          \"city_state\": \"\",\r\n          \"zip\": \"1220\"\r\n        },\r\n        \"DeliveryNotes\": \"TestNote\",\r\n        \"TicketTotal\": {\r\n          \"subtotal\": \"16.00\",\r\n          \"customer_total\": \"21.18\"\r\n        },\r\n        \"OrderDetails\": [\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"5\\\" Order details with one Original ( 2 Margaritas 1 Fucchi) ( 2 Margaritas 1 Fucchi) ( 4 Margaritas 1 Fucchi) ( 6 Margaritas 1 Fucchi) ( 7 Margaritas 3 Fucchi) ( 11 Margaritas 1 Fucchi) ( 13 Margaritas 1 Fucchi) ( 15 Margaritas 1 Fucchi) ( 24 Margaritas 5 Fucchi)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers) - Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers) - Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers) - Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n           {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Original, Sausage ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n         {\r\n            \"description\": \"10\\\" Original, Sausage ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Original, Sausage ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"5\\\" Order details with one Original ( 2 Margaritas 1 Fucchi) ( 2 Margaritas 1 Fucchi) ( 4 Margaritas 1 Fucchi) ( 6 Margaritas 1 Fucchi) ( 7 Margaritas 3 Fucchi) ( 11 Margaritas 1 Fucchi) ( 13 Margaritas 1 Fucchi) ( 15 Margaritas 1 Fucchi) ( 24 Margaritas 5 Fucchi)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers) - Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers) - Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers) - Original, Peperoni ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n           {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Original, Sausage ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n         {\r\n            \"description\": \"10\\\" Original, Sausage ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Original, Sausage ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers) ( Original 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original (1 Coca Cola 1 Juice)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Drinks\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original (1 Chicken Fingers 1 Sauce)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Meat\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Burger 1 Cheeseburger)-finish\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Fast Food\"\r\n          }\r\n        ]\r\n      },                 {\r\n        \"_id\": \"5d7b4eb0dcb09747af97241e\",\r\n        \"StoreId\": 643,\r\n        \"TaskId\": 108410386,\r\n        \"Color\": \"DRIVER\",\r\n        \"Status\": \"PENDING\",\r\n        \"ForeignId\": \"643\",\r\n        \"ForeignAgentId\": 593430,\r\n        \"Lat\": 41.988077,\r\n        \"Lng\": 20.959395,\r\n        \"Address\": \"Tetovo center 2\",\r\n        \"Description\": \"Test1, Test 2, Test 3\",\r\n        \"OrderRank\": 2,\r\n        \"DueTime\": 1568362080000,\r\n        \"CreatedTime\": 1568362155459,\r\n        \"AssignedTime\": 1568362155458,\r\n        \"PlanAhead\": false,\r\n        \"SessionAssignTime\": null,\r\n        \"UserId\": 39035,\r\n        \"DeviceHash\": \"pc0d6b9\",\r\n        \"ToBeDeleted\": \"2019-09-13T12:00:00.000Z\",\r\n        \"DestinationAddress\": {\r\n          \"address1\": \"Tetovo center 2\",\r\n          \"address2\": \"ajkshdlkasdkasjd\",\r\n          \"city_state\": \"LOUISVILLE, KY\",\r\n          \"zip\": \"40245\"\r\n        },\r\n        \"DeliveryNotes\": \"\",\r\n        \"TicketTotal\": {\r\n          \"subtotal\": \"16.00\",\r\n          \"customer_total\": \"13.16\"\r\n        },\r\n        \"OrderDetails\": []\r\n      },               {\r\n        \"_id\": \"5d7b4eb0dcb09747af97241e\",\r\n        \"StoreId\": 643,\r\n        \"TaskId\": 108410386,\r\n        \"Color\": \"DRIVER\",\r\n        \"Status\": \"PENDING\",\r\n        \"ForeignId\": \"643\",\r\n        \"ForeignAgentId\": 593430,\r\n        \"Lat\": 0,\r\n        \"Lng\": 0,\r\n        \"Address\": \"Tetovo center 3\",\r\n        \"Description\": \"Test1, Test 2, Test 3\",\r\n        \"OrderRank\": 3,\r\n        \"DueTime\": 1568362080000,\r\n        \"CreatedTime\": 1568362155459,\r\n        \"AssignedTime\": 1568362155458,\r\n        \"PlanAhead\": false,\r\n        \"SessionAssignTime\": null,\r\n        \"UserId\": 39035,\r\n        \"DeviceHash\": \"pc0d6b9\",\r\n        \"ToBeDeleted\": \"2019-09-13T12:00:00.000Z\",\r\n        \"DestinationAddress\": null,\r\n        \"DeliveryNotes\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. FINISH\",\r\n        \"TicketTotal\": {\r\n          \"subtotal\": \"16.00\",\r\n          \"customer_total\": \"19.27\"\r\n        },\r\n        \"OrderDetails\": [\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers)\",\r\n            \"quantity\": 1,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          },\r\n          {\r\n            \"description\": \"10\\\" Order details with one Original ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers) ( 1 Garlic Cup 1 Pepperoncini Peppers)-finish\",\r\n            \"quantity\": 0,\r\n            \"index\": 1,\r\n            \"category\": \"Pizza\"\r\n          }\r\n        ]\r\n      }\r\n    ]"
        }
    }
    
    
}



