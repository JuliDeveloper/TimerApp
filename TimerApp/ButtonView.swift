//
//  ButtonView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 200, height: 50)
        .background(color)
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
        ButtonView(title: "Hi", color: .red, action: {})
    }
}
