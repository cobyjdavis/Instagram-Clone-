//
//  CommentsView.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/14/23.
//

import SwiftUI

struct CommentsView: View {
    
    @StateObject var viewModel: CommentsViewModel
    @State private var commentText = ""
    
    private var currentUser: User? {
        return UserService.shared.currentUser
    }
    
    init(post: Post) {
        self._viewModel = StateObject(wrappedValue: CommentsViewModel(post: post))
    }
    var body: some View {
        VStack {
            Text("Comments")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.top, 24)
            
            Divider()
            
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(viewModel.comments) { comment in
                        CommentCell(comment: comment)
                    }
                }
                .padding(.top)
            }
            
            Divider()
            
            HStack(spacing: 12) {
                CircularProfileImageView(user: currentUser, size: .xSmall)
                
                ZStack(alignment: .trailing) {
                    TextField("Add a comment", text: $commentText, axis: .vertical)
                        .font(.footnote)
                        .padding(12)
                        .padding(.trailing, 40)
                        .overlay {
                            Capsule()
                                .stroke(Color(.systemGray), lineWidth: 1)
                        }
                    
                    Button(action: {
                        Task {
                            try await viewModel.uploadComment(commentText: commentText)
                            commentText = ""
                        }
                    }, label: {
                        Text("Post")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.systemBlue))
                    })
                    .padding(.horizontal)
                }
            }
            .padding([.horizontal, .bottom] , 12)
        }
    }
}

#Preview {
    CommentsView(post: Post.MOCK_POSTS[2])
}
