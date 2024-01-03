//
//  Post.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/8/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
    
    var didLike: Bool? = false
}

extension Post {
    static let MOCK_IMAGE_URL = "https://firebasestorage.googleapis.com:443/v0/b/instagramswiftui-42402.appspot.com/o/profile_images%2FB053B0EA-FD2D-4A74-8BE0-33768E365A10?alt=media&token=f5e034d2-f6e2-4211-be94-be393609816d"
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This some test caption for now",
            likes: 123, imageUrl: "spiderman",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This some test caption for now",
            likes: 104, imageUrl: "venom",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Wakanda Forever",
            likes: 12, imageUrl: "blackpanther",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Iron Man",
            likes: 314, imageUrl: "ironman",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Living in the shadows...",
            likes: 711, imageUrl: "batman",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[4]
        ),
    ]
}
