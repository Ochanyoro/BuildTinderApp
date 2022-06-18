//
//  Message.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import Foundation

struct Message: Hashable{
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool{
        return person == nil
    }
}


extension Message {
    static let exampleSent = Message(content: "Hello World")
    static let exampleRecived = Message(content: "Hello there", person: Person.example)
}
