//
//  LoginView.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var countWords: Int = 0
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                TextField("Enter your name...", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                Text("\(countWords)")
                    .foregroundColor(countWords < 3 ? .red : .green)
                    .onChange(of: userManager.user.name.count) { newValue in
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
            .disabled(!userManager.nameIsValid)
        }
    }
    
    private func loginUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isLogin.toggle()
            StorageManager.shared.save(user: userManager.user)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(UserManager())
    }
}
