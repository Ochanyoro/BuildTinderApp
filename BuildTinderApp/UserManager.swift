//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/19.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "")
    
    init() {
        loadUser()
    }
    
    private func loadUser() {
        self.currentUser = User.example
    }
}

