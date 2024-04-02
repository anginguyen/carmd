//
//  ContentView.swift
//  CarMD
//
//  Created by Angela Nguyen on 3/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject private var autoShopModel = AutoShopModel()
//    @StateObject private var autoShopModel = Dependencies.shared.autoShops
    
    var body: some View {
        VStack {
            ForEach(autoShopModel.autoShops) { autoShop in
                Text(autoShop.name)
            }
            .task {
                await autoShopModel.fetchAllAutoShops()
            }
        }
    }
}

#Preview {
    ContentView()
}
