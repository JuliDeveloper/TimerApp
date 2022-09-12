//
//  ContentView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var storageManger: StorageManager
        
    var body: some View {
        VStack {
            Text("Hi, \(storageManger.userName)")
                .padding(.top, 100)
                .font(.largeTitle)
            Text("\(timer.counter)")
                .padding(.top, 100)
                .font(.largeTitle)
            Spacer()
            ButtonCounter(timer: timer)
            Spacer()
            ButtonLogOut(action: logOut)
                .padding(.bottom, 20)
        }
    }
    
    private func logOut() {
        storageManger.userName = ""
        storageManger.isLogin.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StorageManager())
    }
}
