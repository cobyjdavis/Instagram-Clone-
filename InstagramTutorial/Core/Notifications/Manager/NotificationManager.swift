//
//  NotificationManager.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/18/23.
//

import Foundation

class NotificationManager {
    
    static let shared = NotificationManager()
    private let service = NotificationService()
    
    private init() { }
    
    func uploadLikeNotification(toUid uid: String, post: Post) {
        service.uploadNotifications(toUid: uid, type: .like, post: post)
    }
    
    func uploadCommentNotification(toUid uid: String, post: Post) {
        service.uploadNotifications(toUid: uid, type: .comment, post: post)
    }
    
    func uploadFollowNotification(toUid uid: String) {
        service.uploadNotifications(toUid: uid, type: .follow)
    }
}
