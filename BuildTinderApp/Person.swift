//
//  Person.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import Foundation


struct Person:Hashable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var imageURLS: [URL]
    var bio: String
    var age: Int
    
}


extension Person {
    static let example =  Person(
        name: "Ochan",
        imageURLS: [ URL(string: "https://picsum.photos/400/300")!,
                     URL(string: "https://picsum.photos/400/301")!,
                     URL(string: "https://picsum.photos/400/302")!,
                     URL(string: "https://picsum.photos/400/303")!],
        bio: "This is my bio",
        age: 23
    )
    static let example2 = Person(
        name: "Ostyle",
        imageURLS: [
            URL(string: "https://picsum.photos/400/301")!
        ],
        bio: "I really love dogs",
        age:22
    )
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(name: "wadao",
               imageURLS: [URL(string: "https://picsum.photos/400/302")!],
               bio: "I love hiking",
               age: 30),
        Person(name: "okazu",
               imageURLS: [URL(string: "https://picsum.photos/400/303")!],
               bio: "I am really boring",
               age: 27),
        Person(name: "oka",
               imageURLS: [URL(string: "https://picsum.photos/400/304")!],
               bio: "I like to skateboard",
               age: 24)
    ]
}
