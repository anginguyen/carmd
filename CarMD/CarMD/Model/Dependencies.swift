//
//  Dependencies.swift
//  CarMD
//
//  Created by Angela Nguyen on 4/2/24.
//

import Foundation

class Dependencies {
    static let shared = Dependencies()
    
    let autoShops = AutoShopModel.shared
}

enum Table {
    static let autoShops = "auto_shops"
    static let carParts = "car_parts"
    static let inventory = "inventory"
}
