//
//  Dependencies.swift
//  CarMD
//
//  Created by Angela Nguyen on 4/1/24.
//

import Foundation

struct AutoShop: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var address: String
    var inventory: [InventoryItem]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case address
        case inventory
    }
}

struct InventoryItem: Codable, Hashable {
    var carPart: CarPart
    var quantity: Int
    
    enum CodingKeys: String, CodingKey {
        case carPart = "car_parts"
        case quantity
    }
}
