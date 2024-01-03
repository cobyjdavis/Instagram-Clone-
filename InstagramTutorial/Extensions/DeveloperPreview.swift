//
//  DeveloperPreview.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/14/23.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let comment = Comment(postOwnerUid: "123", commentText: "Text comment for now", postId: "3214", timestamp: Timestamp(), commentOwnerUid: "129294482")
    
    let notifications: [Notification] = [
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderId: "12", type: .like),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderId: "456", type: .comment),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderId: "789", type: .follow),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderId: "124", type: .like),
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderId : "173", type: .follow),
    ]
}
