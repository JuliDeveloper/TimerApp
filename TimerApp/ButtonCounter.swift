//
//  ButtonCounter.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct ButtonCounter: View {
        
    var body: some View {
        Button(action: {  }) {
            Text("Start")
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 200, height: 50)
        .background(.orange)
        .foregroundColor(.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 4)
        )
    }
}

struct ButtonCounter_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
