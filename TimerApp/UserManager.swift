//
//  UserManager.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
    
}

struct User: Codable {
    var name = ""
    var isLogin = false
}
