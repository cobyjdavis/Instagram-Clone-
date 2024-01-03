//
//  Comment.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/14/23.
//

import Firebase
import FirebaseFirestoreSwift

struct Comment: Identifiable, Codable {
    @DocumentID var commentId: String?
    var postOwnerUid: String
    var commentText: String
    var postId: String
    var timestamp: Timestamp
    var commentOwnerUid: String
    
    var user: User?
    
    var id: String {
        return commentId ?? NSUUID().uuidString
    }
}
