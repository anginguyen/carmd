//
//  InventoryView.swift
//  CarMD
//
//  Created by Angela Nguyen on 4/2/24.
//

import SwiftUI

struct InventoryView: View {
    var inventory: [InventoryItem]
    
    var body: some View {
        List {
            ForEach(inventory, id: \.self) { item in
                HStack {
                    Text(item.carPart.name)
                    Spacer()
                    Text(String(item.quantity))
                }
            }
        }
    }
}

#Preview {
    InventoryView(inventory: [
        InventoryItem(carPart: CarPart(id: 1, name: "Brake Pad"), quantity: 3),
        InventoryItem(carPart: CarPart(id: 1, name: "Air Filter"), quantity: 3),
        InventoryItem(carPart: CarPart(id: 1, name: "Meow"), quantity: 3)
    ])
}
