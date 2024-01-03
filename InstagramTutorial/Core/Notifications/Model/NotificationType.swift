//
//  NotificationType.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/18/23.
//

import Foundation

enum NotificationType: Int, Codable {
    case like
    case comment
    case follow
    
    var notificationMessage: String {
        switch self {
        case .like: return "liked one of your posts."
        case .comment: return "commented on one of your posts."
        case .follow: return "started following you."
        }
    }
}
