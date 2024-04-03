//
//  ContentView.swift
//  CarMD
//
//  Created by Angela Nguyen on 3/27/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var autoShopModel = Dependencies.shared.autoShops
    
    var body: some View {
        NavigationStack {
            List (autoShopModel.autoShops) { autoShop in
                NavigationLink {
                    InventoryView(inventory: autoShop.inventory!)
                } label: {
                    Text(autoShop.name)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
