//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

@main
struct TimerAppApp: App {
    
    @StateObject private var userManager = UserManager()
    @StateObject private var storageManager = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
                .environmentObject(storageManager)
        }
    }
}
