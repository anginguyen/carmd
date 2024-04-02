//
//  AutoShop.swift
//  CarMD
//
//  Created by Angela Nguyen on 3/31/24.
//

import Foundation
import Supabase

@MainActor
final class AutoShopModel: ObservableObject {
    static let shared = AutoShopModel()
    
    var autoShops = [AutoShop]()
    
    init() {
        Task {
            await fetchAllAutoShops()
            print(self.autoShops)
        }
    }
    
    // Fetch auto shop with specific ID
    func fetchAutoShop(id: Int) async throws -> AutoShop {
        if let autoShop = self.autoShops.first(where: { $0.id == id }) {
            return autoShop
        }
        
        return try await supabase.database
            .from(Table.autoShops)
            .select()
            .eq("id", value: id)
            .single()
            .execute()
            .value
    }
    
    // Fetch all auto shops with inventory
    func fetchAllAutoShops() async {
        do {
            let autoShops: [AutoShop] = try await supabase.database
                .from(Table.autoShops)
                .select(
                    """
                    *,
                    inventory (
                        car_parts:car_part_id (
                            id, name
                        ),
                        quantity
                    )
                    """
                )
                .execute()
                .value
            self.autoShops = autoShops
        } catch {
            dump(error)
        }
    }
}
