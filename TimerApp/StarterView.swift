//
//  StarterView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject private var user : UserManager
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        Group {
            if storageManager.isLogin {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
