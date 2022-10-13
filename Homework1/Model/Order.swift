// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let order = try? newJSONDecoder().decode(Order.self, from: jsonData)

import Foundation

/*class Order: Decodable {
 
 
 var id: String
 var storeId: Int
 var taskId: Int64
 var color: String
 var status: String
 var foreignId: String
 var foreignAgentId: Int
 var latitude: Double
 var longitude: Double
 var address: String
 var description: String
 var orderRank: Int
 var dueTime: Int
 var createdTime: Int
 var assignedTime: Int
 var planAhead: Bool
 var userId: Int
 var deviceHash: String
 var toBeDeleted: String
 var orderDetails: [OrderDetails]
 var returnToStore: Bool
 var deliveryNotes: String
 var ticketTotal: TicketTotal?
 var destinationAddress: DestinationAddress?
 var displayAddress: String {
 if let destination = destinationAddress {
 let address = destination.address1.trimmed
 let address2 = destination.address2.trimmed
 let state = destination.cityState.trimmed
 let zip = destination.zip.trimmed
 
 if address.hasValue() {
 var localAddress: String = address
 if address2.hasValue() {
 localAddress += (", " + address2)
 }
 if state.hasValue() {
 localAddress += (", " + state)
 }
 if zip.hasValue() {
 localAddress += (", " + zip)
 }
 return localAddress
 }
 }
 return address
 }
 var routingAddress: String? {
 if let destination = destinationAddress {
 let address = destination.address1.trimmed
 let state = destination.cityState.trimmed
 let zip = destination.zip.trimmed
 
 if address.hasValue() && state.hasValue() && zip.hasValue() {
 let address: String = address + ", " + state + ", " + zip
 return address
 }
 }
 return nil
 }
 
 var isValidForRouting: Bool{
 if let destination = destinationAddress {
 let address = destination.address1.trimmed
 let state = destination.cityState.trimmed
 let zip = destination.zip.trimmed
 
 if address.hasValue() && state.hasValue() && zip.hasValue() {
 return true
 }
 }
 return !(latitude == 0 && longitude == 0)
 }
 enum CodingKeys: String, CodingKey {
 case id = "_id"
 case storeId = "StoreId"
 case taskId = "TaskId"
 case color = "Color"
 case status = "Status"
 case foreignId = "ForeignId"
 case foreignAgentId = "ForeignAgentId"
 case latitude = "Lat"
 case longitude = "Lng"
 case address = "Address"
 case description = "Description"
 case orderRank = "OrderRank"
 case dueTime = "DueTime"
 case createdTime = "CreatedTime"
 case assignedTime = "AssignedTime"
 case planAhead = "PlanAhead"
 case userId = "UserId"
 case deviceHash = "DeviceHash"
 case toBeDeleted = "ToBeDeleted"
 case orderDetails = "OrderDetails"
 case returnToStore
 case deliveryNotes = "DeliveryNotes"
 case ticketTotal = "TicketTotal"
 case destinationAddress = "DestinationAddress"
 }
 required init(from decoder: Decoder) throws {
 let container = try decoder.container(keyedBy: CodingKeys.self)
 self.id = try container.decodeWrapper(key: .id, defaultValue: "")
 self.storeId = try container.decodeWrapper(key: .storeId, defaultValue: 0)
 self.taskId = try container.decodeWrapper(key: .taskId, defaultValue: 0)
 self.color = try container.decodeWrapper(key: .color, defaultValue: "")
 self.status = try container.decodeWrapper(key: .status, defaultValue: "")
 self.foreignId = try container.decodeWrapper(key: .foreignId, defaultValue: "")
 self.foreignAgentId = try container.decodeWrapper(key: .foreignAgentId, defaultValue: 0)
 self.latitude = try container.decodeWrapper(key: .latitude, defaultValue: 0)
 self.longitude = try container.decodeWrapper(key: .longitude, defaultValue: 0)
 self.address = try container.decodeWrapper(key: .address, defaultValue: "")
 self.description = try container.decodeWrapper(key: .description, defaultValue: "")
 self.orderRank = try container.decodeWrapper(key: .orderRank, defaultValue: 0)
 self.dueTime = try container.decodeWrapper(key: .dueTime, defaultValue: 0)
 self.createdTime = try container.decodeWrapper(key: .createdTime, defaultValue: 0)
 self.assignedTime = try container.decodeWrapper(key: .assignedTime, defaultValue: 0)
 self.planAhead = try container.decodeWrapper(key: .planAhead, defaultValue: false)
 self.userId = try container.decodeWrapper(key: .userId, defaultValue: 0)
 self.deviceHash = try container.decodeWrapper(key: .deviceHash, defaultValue: "")
 self.toBeDeleted = try container.decodeWrapper(key: .toBeDeleted, defaultValue: "")
 self.orderDetails = try container.decodeWrapper(key: .orderDetails, defaultValue: [])
 self.returnToStore = try container.decodeWrapper(key: .returnToStore, defaultValue: false)
 self.deliveryNotes = try container.decodeWrapper(key: .deliveryNotes, defaultValue: "")
 self.ticketTotal = try container.decodeWrapper(key: .ticketTotal, defaultValue: nil)
 self.destinationAddress = try container.decodeWrapper(key: .destinationAddress, defaultValue: nil)
 }
 internal init() {
 self.id = ""
 self.storeId = 0
 self.taskId = 0
 self.color = ""
 self.status = ""
 self.foreignId = ""
 self.foreignAgentId = 0
 self.latitude = 0
 self.longitude = 0
 self.address = ""
 self.description = ""
 self.orderRank = 0
 self.dueTime = 0
 self.createdTime = 0
 self.assignedTime = 0
 self.planAhead = false
 self.userId = 0
 self.deviceHash = ""
 self.toBeDeleted = ""
 self.orderDetails = []
 self.returnToStore = false
 self.deliveryNotes = ""
 self.ticketTotal = nil
 self.destinationAddress = nil
 }
 }
 class OrderDetails: Decodable {
 var description: String
 var quantity: Int
 var index: Int
 var category: String
 enum CodingKeys: String, CodingKey {
 case description, quantity, index, category
 }
 required init(from decoder: Decoder) throws {
 let container = try decoder.container(keyedBy: CodingKeys.self)
 self.description = try container.decodeWrapper(key: .description, defaultValue: "")
 self.quantity = try container.decodeWrapper(key: .quantity, defaultValue: 0)
 self.index = try container.decodeWrapper(key: .index, defaultValue: 0)
 self.category = try container.decodeWrapper(key: .category, defaultValue: "")
 }
 }
 class TicketTotal: Decodable {
 var subtotal: Double
 var customerTotal: Double
 enum CodingKeys: String, CodingKey {
 case subtotal
 case customerTotal = "customer_total"
 }
 required init(from decoder: Decoder) throws {
 let container = try decoder.container(keyedBy: CodingKeys.self)
 self.subtotal = try container.decodeWrapper(key: .subtotal, defaultValue: 0)
 self.customerTotal = try container.decodeWrapper(key: .customerTotal, defaultValue: 0)
 }
 }
 class DestinationAddress: Decodable {
 var address1: String
 var address2: String
 var cityState: String
 var zip: String
 enum CodingKeys: String, CodingKey {
 case address1
 case address2
 case cityState = "city_state"
 case zip
 }
 required init(from decoder: Decoder) throws {
 let container = try decoder.container(keyedBy: CodingKeys.self)
 self.address1 = try container.decodeWrapper(key: .address1, defaultValue: "")
 self.address2 = try container.decodeWrapper(key: .address2, defaultValue: "")
 self.cityState = try container.decodeWrapper(key: .cityState, defaultValue: "")
 self.zip = try container.decodeWrapper(key: .zip, defaultValue: "")
 }
 }
 
 */
// MARK: - OrderElement
class OrderElement: Decodable {
    var id: String
    var storeID, taskID: Int
    let color, status, foreignID: String
    let foreignAgentID: Int
    let lat, lng: Double
    var address, orderDescription: String
    let orderRank, dueTime, createdTime, assignedTime: Int
    let planAhead: Bool
    let sessionAssignTime: JSONNull?
    let userID: Int
    let deviceHash, toBeDeleted: String
    let destinationAddress: DestinationAddress?
    let deliveryNotes: String
    let ticketTotal: TicketTotal
    let orderDetails: [OrderDetail]
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case storeID = "StoreId"
        case taskID = "TaskId"
        case color = "Color"
        case status = "Status"
        case foreignID = "ForeignId"
        case foreignAgentID = "ForeignAgentId"
        case lat = "Lat"
        case lng = "Lng"
        case address = "Address"
        case orderDescription = "Description"
        case orderRank = "OrderRank"
        case dueTime = "DueTime"
        case createdTime = "CreatedTime"
        case assignedTime = "AssignedTime"
        case planAhead = "PlanAhead"
        case sessionAssignTime = "SessionAssignTime"
        case userID = "UserId"
        case deviceHash = "DeviceHash"
        case toBeDeleted = "ToBeDeleted"
        case destinationAddress = "DestinationAddress"
        case deliveryNotes = "DeliveryNotes"
        case ticketTotal = "TicketTotal"
        case orderDetails = "OrderDetails"
    }
    
    init(id: String, storeID: Int, taskID: Int, color: String, status: String, foreignID: String, foreignAgentID: Int, lat: Double, lng: Double, address: String, orderDescription: String, orderRank: Int, dueTime: Int, createdTime: Int, assignedTime: Int, planAhead: Bool, sessionAssignTime: JSONNull?, userID: Int, deviceHash: String, toBeDeleted: String, destinationAddress: DestinationAddress?, deliveryNotes: String, ticketTotal: TicketTotal, orderDetails: [OrderDetail]) {
        self.id = id
        self.storeID = storeID
        self.taskID = taskID
        self.color = color
        self.status = status
        self.foreignID = foreignID
        self.foreignAgentID = foreignAgentID
        self.lat = lat
        self.lng = lng
        self.address = address
        self.orderDescription = orderDescription
        self.orderRank = orderRank
        self.dueTime = dueTime
        self.createdTime = createdTime
        self.assignedTime = assignedTime
        self.planAhead = planAhead
        self.sessionAssignTime = sessionAssignTime
        self.userID = userID
        self.deviceHash = deviceHash
        self.toBeDeleted = toBeDeleted
        self.destinationAddress = destinationAddress
        self.deliveryNotes = deliveryNotes
        self.ticketTotal = ticketTotal
        self.orderDetails = orderDetails
    }
}

// MARK: - DestinationAddress
class DestinationAddress: Codable {
    let address1, address2, cityState, zip: String
    
    enum CodingKeys: String, CodingKey {
        case address1, address2
        case cityState = "city_state"
        case zip
    }
    
    init(address1: String, address2: String, cityState: String, zip: String) {
        self.address1 = address1
        self.address2 = address2
        self.cityState = cityState
        self.zip = zip
    }
}

// MARK: - OrderDetail
class OrderDetail: Codable {
    let orderDetailDescription: String
    let quantity, index: Int
    let category: String
    
    enum CodingKeys: String, CodingKey {
        case orderDetailDescription = "description"
        case quantity, index, category
    }
    
    init(orderDetailDescription: String, quantity: Int, index: Int, category: String) {
        self.orderDetailDescription = orderDetailDescription
        self.quantity = quantity
        self.index = index
        self.category = category
    }
}

// MARK: - TicketTotal
class TicketTotal: Codable {
    let subtotal, customerTotal: String
    
    enum CodingKeys: String, CodingKey {
        case subtotal
        case customerTotal = "customer_total"
    }
    
    init(subtotal: String, customerTotal: String) {
        self.subtotal = subtotal
        self.customerTotal = customerTotal
    }
}

typealias Order = [OrderElement]

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}




