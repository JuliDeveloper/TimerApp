//
//  ButtonLogOut.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct ButtonLogOut: View {
    
    var action: () -> (Void)
    
    var body: some View {
        Button(action: action) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 200, height: 50)
        .background(.red)
        .foregroundColor(.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.blue, lineWidth: 4)
        )
    }
}

//struct ButtonLogOut_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonLogOut(action: ??? )
//    }
//}