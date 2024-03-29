//
//  NotificationService.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/18/23.
//

import Firebase

class NotificationService {
    
    func fetchNotifications() async throws -> [Notification] {
        guard let currentUid = Auth.auth().currentUser?.uid else { return [] }
        
        let snapshot = try await FirebaseConstants
            .UserNotificationCollection(uid: currentUid)
            .getDocuments()
        
        return snapshot.documents.compactMap( { try? $0.data(as: Notification.self) })
    }
    
    func uploadNotifications(toUid uid: String, type: NotificationType, post: Post? = nil) {
        guard let currentUid = Auth.auth().currentUser?.uid, uid != currentUid else { return }
        let ref = FirebaseConstants.UserNotificationCollection(uid: currentUid).document()
        
        let notification = Notification(id: ref.documentID,
                                      postId: post?.id,
                                      timestamp: Timestamp(),
                                      notificationSenderId: currentUid,
                                      type: type)
        
        guard let notificationData = try? Firestore.Encoder().encode(notification) else { return }
        
        ref.setData(notificationData)
    }
    
    func deleteNotification(toUid uid: String, type: NotificationType, post: Post? = nil) {
        
    }
}
