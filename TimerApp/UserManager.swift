//
//  UserManager.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isLogin = false
    var name = ""
}
