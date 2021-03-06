//
//  Person.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import SwiftUI


struct Person:Hashable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var imageURLS: [URL]
    var bio: String
    var distance: Int
    
    var bioLong: String
    
    var age: Int
    
    // User for card manipulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
    
}


extension Person {
    static let example =  Person(
        name: "Ochan",
        imageURLS: [ URL(string: "https://picsum.photos/400/300")!,
                     URL(string: "https://picsum.photos/400/301")!,
                     URL(string: "https://picsum.photos/400/302")!,
                     URL(string: "https://picsum.photos/400/303")!],
        bio: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
        distance: 20,
        bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
        age: 23
    )
    static let example2 = Person(
        name: "Ostyle",
        imageURLS: [
            URL(string: "https://picsum.photos/400/301")!
        ],
        bio: "I really love dogs",
        distance: 25,
        bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
        age:22
    )
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(name: "wadao",
               imageURLS: [URL(string: "https://picsum.photos/400/302")!,
                           URL(string: "https://picsum.photos/400/303")!,
                           URL(string: "https://picsum.photos/400/304")!,
                           URL(string: "https://picsum.photos/400/305")!
                          ],
               bio: "I love hiking",
               distance: 30,
               bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
               age: 30),
        Person(name: "okazu",
               imageURLS: [URL(string: "https://picsum.photos/400/306")!,
                           URL(string: "https://picsum.photos/400/307")!,
                           URL(string: "https://picsum.photos/400/308")!,
                           URL(string: "https://picsum.photos/400/309")!
                          ],
               bio: "I am really boring",
               distance: 40,
               bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
               age: 27),
        Person(name: "oka",
               imageURLS: [URL(string: "https://picsum.photos/400/310")!,
                           URL(string: "https://picsum.photos/400/311")!,
                           URL(string: "https://picsum.photos/400/312")!,
                           URL(string: "https://picsum.photos/400/313")!
                          ],
               bio: "I like to skateboard",
               distance: 50,
               bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
               age: 24)
    ]
}
