//
//  MessageView.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//
//
//  MessageView.swift
//  BuildTinderApp
//
//  Created by Nikita Thomas on 2/13/21.
//

import SwiftUI

struct MessageView: View {
    var message: Message
    
    var body: some View {
        HStack {
            if message.fromCurrentUser {
                Spacer()
            }
            
            Text(message.content)
                .padding(10)
                .foregroundColor(.white)
                .background(message.fromCurrentUser ? Color.blue : Color.gray)
                .cornerRadius(10)
            
            if !message.fromCurrentUser {
                Spacer()
            }
        }
        .padding()
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message.exampleSent)
    }
}

