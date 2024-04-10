//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Kuiduan Zeng on 3/26/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
