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
    
}


extension Person {
    static let example =  Person(name: "Ochan", imageURLS: [URL(string: "https://picsum.photos/400/300")!])
    static let example2 = Person(name: "ostyle", imageURLS: [URL(string: "https://picsum.photos/400/301")!])
}
