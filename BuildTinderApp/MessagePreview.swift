//
//  MessageThread.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import Foundation

struct MessagePreview: Hashable {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hello there. How are you doing today? How's the weather right now your area")
    
    static let examples: [MessagePreview] = [
        MessagePreview(person: Person.example, lastMessage: "Hello there. How are you doing today? How's the weather right now your area"),
        MessagePreview(person: Person.example2, lastMessage: "Hello there.")
    ]
}
