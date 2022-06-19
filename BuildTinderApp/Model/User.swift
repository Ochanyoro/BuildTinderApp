//
//  User.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/19.
//

import Foundation


struct User {
    var name: String
    
    var goldSubscriber: Bool = false
}

extension User{
    static var example = User(name: "Ochan", goldSubscriber: false)
}

