//
//  User.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/19.
//

import Foundation


struct User {
    var name: String
    var age: Int
    var jobTitle: String
    var goldSubscriber: Bool = false
    var profileTip: String = ""
    var imageURLS: [URL] = []
}

extension User{
    static var example = User(
        name: "Ochan",
        age: 23,
        jobTitle: "に〜〜〜と",
        goldSubscriber: false,
        profileTip: "Photo Tip: Make waves with a beach photo and get more likes",
        imageURLS: [URL(string: "https://picsum.photos/400/310")!]
    )
}

