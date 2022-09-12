//
//  ContentView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        VStack {
            Text("3")
                .padding(.top, 100)
                .font(.largeTitle)
            Spacer()
            ButtonCounter()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
