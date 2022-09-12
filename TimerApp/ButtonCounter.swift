//
//  ButtonCounter.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct ButtonCounter: View {
    
    @ObservedObject var timer: TimeCounter
        
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 200, height: 50)
        .background(.green)
        .foregroundColor(.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.blue, lineWidth: 4)
        )
    }
}

struct ButtonCounter_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCounter(timer: TimeCounter())
    }
}
