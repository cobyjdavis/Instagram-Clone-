//
//  CreatePasswordView.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/8/23.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        SignupProcessView(text: $viewModel.password, title: "Create a password", description: "Your password must be at least 6 characters in legnth", textfieldPlaceholder: "Password", destination: AnyView(CompleteSignUpView().navigationBarBackButtonHidden()))
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreatePasswordView()
}
