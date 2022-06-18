//
//  ChatManeger.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//
//
//  ChatManager.swift
//  BuildTinderApp
//
//  Created by Nikita Thomas on 2/13/21.
//

import Foundation
import Combine
import UIKit

class ChatManeger: ObservableObject {
    @Published var messages: [Message] = []
    @Published var keyboardIsShowing: Bool = false
    
    var cancellable: AnyCancellable? = nil
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        loadMessages()
        setupPublishers()
    }
    
    public func sendMessage(_ message: Message) {
        // Networking
        messages.append(message)
        // if networking failure, then show an error with some retry options
    }
    
    private let keyboardWillShow = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map({ _ in true  })
    
    private let keyboardWillHide = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map({ _ in false })
    
    private func setupPublishers() {
        cancellable = Publishers.Merge(keyboardWillShow, keyboardWillHide)
            .subscribe(on: DispatchQueue.main)
            .assign(to: \.keyboardIsShowing, on: self)
    }
    
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleRecived]
    }
    
    deinit {
        cancellable?.cancel()
    }
}
