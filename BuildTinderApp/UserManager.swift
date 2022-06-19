//
//  UserManager.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/19.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "", age: 0, jobTitle: "")
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    
    
    init() {
        loadUser()
        loadMatches()
        loadTopPicks()
    }
    
    private func loadTopPicks(){
        self.topPicks = Person.examples.shuffled()
    }
    
    private func loadUser() {
        self.currentUser = User.example
    }
    
    private func loadMatches(){
        self.matches = Person.examples
    }
    
    
    
}

