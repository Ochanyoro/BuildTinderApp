//
//  MessageListVM.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/19.
//

import Foundation


class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreview()
    }
    
    func loadPreview() {
        self.messagePreviews = MessagePreview.examples
    }
}
