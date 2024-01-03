//
//  LoginViewModel.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/12/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try? await AuthService.shared.login(withEmail: email, password: password)
    }
}
