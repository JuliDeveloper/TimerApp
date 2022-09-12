//
//  LoginView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter your name...", text: $userName)
                .multilineTextAlignment(.center)
            Button(action: loginUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
        }
    }
    
    private func loginUser() {
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
