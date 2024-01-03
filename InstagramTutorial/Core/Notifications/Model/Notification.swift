//
//  Notification.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/18/23.
//

import Firebase

struct Notification: Identifiable, Codable {
    let id: String
    var postId: String?
    let timestamp: Timestamp
    let notificationSenderId: String
    let type: NotificationType
    
    var post: Post?
    var user: User?
}
