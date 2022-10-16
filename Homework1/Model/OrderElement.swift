// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let order = try? newJSONDecoder().decode(Order.self, from: jsonData)

import Foundation

// MARK: - OrderElement
struct OrderElement: Codable {
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




