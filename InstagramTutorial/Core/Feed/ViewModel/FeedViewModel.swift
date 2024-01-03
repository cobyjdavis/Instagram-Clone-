//
//  FeedViewModel.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/13/23.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
}
