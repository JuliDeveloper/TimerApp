//
//  LoginView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String = ""
    @State var countWords: Int = 0
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                Text("\(countWords)")
                    .foregroundColor(countWords < 3 ? .red : .green)
                    .onChange(of: userName.count) { newValue in
                        countWords = newValue
                    }
            }
            .padding()
            Button(action: loginUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(countWords < 3 ? true : false)
        }
    }
    
    private func loginUser() {
        if !userName.isEmpty && userName.count > 2 {
            user.name = userName
            user.isLogin.toggle()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
