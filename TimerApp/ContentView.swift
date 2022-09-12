//
//  ContentView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
        
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .padding(.top, 100)
                .font(.largeTitle)
            Text("\(timer.counter)")
                .padding(.top, 100)
                .font(.largeTitle)
            Spacer()
            ButtonCounter(timer: timer)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
