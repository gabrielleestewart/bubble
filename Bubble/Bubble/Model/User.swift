//
//  User.swift
//  Bubble
//
//  Created by Mel Andrade-Muñoz on 2/24/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    let bio: String?
    
    // added this entire init part below
    init(id: String, fullname: String, email: String, username: String, profileImageUrl: String? = nil, bio: String? = nil) {
        self.id = id
        self.fullname = fullname
        self.email = email
        self.username = username
        self.profileImageUrl = profileImageUrl
        self.bio = bio
    }
}

