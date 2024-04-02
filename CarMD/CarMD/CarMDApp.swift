//
//  CarMDApp.swift
//  CarMD
//
//  Created by Angela Nguyen on 3/27/24.
//

import SwiftUI
import SwiftData
import Supabase

@main
struct CarMDApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

let DB_URL = "https://eadoquvoggcfuidwjcgc.supabase.co"
let DB_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVhZG9xdXZvZ2djZnVpZHdqY2djIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE5MzM0MjksImV4cCI6MjAyNzUwOTQyOX0.xgNA1O3gR8KE9XdBo9YVVp7nuon7EZZyHDfksS-J9wg"

let supabase = SupabaseClient(supabaseURL: URL(string: DB_URL)!, supabaseKey: DB_KEY)
