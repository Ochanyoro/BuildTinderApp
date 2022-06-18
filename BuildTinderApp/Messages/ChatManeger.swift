//
//  ChatManeger.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import Foundation


class ChatManeger: ObservableObject {
    @Published var messages: [Message] = []
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        loadMessages()
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exapmleRecived]
    }
}

