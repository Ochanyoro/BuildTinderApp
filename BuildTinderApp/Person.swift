//
//  Person.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import Foundation


struct Person {
    var name: String
    var imageURLS: [URL]
    
}


extension Person {
    static let example =  Person(name: "Alex", imageURLS: [URL(string: "https://picsum.photos/400/300")!])
}
