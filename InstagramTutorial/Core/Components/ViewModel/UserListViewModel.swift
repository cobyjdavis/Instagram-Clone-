//
//  UserListViewModel.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/17/23.
//

import Foundation

@MainActor
class UserListViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        print("DEBUG: Did init")
    }
    
    func fetchusers(forConfig config: UserListConfig) async {
        do {
            self.users = try await UserService.fetchUsers(forConfig: config)
        } catch {
            print("DEBUG: Failed to fetch users with error \(error.localizedDescription)")
        }
    }
}
