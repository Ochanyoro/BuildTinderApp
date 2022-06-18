//
//  ChatView.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import SwiftUI

struct ChatView: View {
    
    @ObservedObject var chatMng: ChatManeger
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        self.chatMng = ChatManeger(person: person)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack {
                ForEach(chatMng.messages.indices, id: \.self){ index in
                    let msg = chatMng.messages[index]
                    MessageView(message: msg)
                }
            }
        })
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}

