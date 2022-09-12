//
//  StorageManager.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import Foundation

class StorageManager: ObservableObject {
    @Published var userName: String = (UserDefaults.standard.string(forKey: "userName") ?? "") {
        didSet {
            UserDefaults.standard.set(userName, forKey: "userName")
        }
    }
    
    @Published var isLogin: Bool = (UserDefaults.standard.bool(forKey: "isLogin")) {
        didSet {
            UserDefaults.standard.set(isLogin, forKey: "isLogin")
        }
    }
}
