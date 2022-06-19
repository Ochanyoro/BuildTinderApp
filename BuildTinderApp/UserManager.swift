//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/19.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "")
    @Published var matches: [Person] = []
    
    init() {
        loadUser()
        loadMatches()
    }
    
    private func loadUser() {
        self.currentUser = User.example
    }
    
    private func loadMatches(){
        self.matches = Person.examples
    }
}

