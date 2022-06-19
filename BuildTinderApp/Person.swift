//
//  Person.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import Foundation


struct Person:Hashable {
    var name: String
    var imageURLS: [URL]
    var bio: String
    
}


extension Person {
    static let example =  Person(
        name: "Ochan",
        imageURLS: [URL(string: "https://picsum.photos/400/300")!],
        bio: "This is my bio"
    )
    static let example2 = Person(
        name: "Ostyle",
        imageURLS: [URL(string: "https://picsum.photos/400/301")!],
        bio: "I really love dogs"
    )
}
