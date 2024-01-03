//
//  UserListConfig.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/17/23.
//

import Foundation

enum UserListConfig: Hashable {
    case followers(uid: String)
    case following(uid: String)
    case likes(postId: String)
    case explore
    
    var navigationTitle: String {
        switch self {
        case .followers: return "followers"
        case .following: return "following"
        case .likes: return "likes"
        case .explore: return "explore"
        }
    }
}
