//
//  Donet_SomethingApp.swift
//  Donet Something
//
//  Created by iPHTech 26 on 28/05/25.
//

import SwiftUI

@main
struct Donet_SomethingApp: App {
    
    init() {
        // Set background color of the tab bar
//        UITabBar.appearance().backgroundColor = UIColor.systemGreen
        
        // Optional: Set the unselected tab item tint
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
