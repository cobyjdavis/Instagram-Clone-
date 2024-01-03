//
//  AddEmailView.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/8/23.
//

import SwiftUI

struct AddEmailView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        SignupProcessView(text: $viewModel.email, title: "Add your email", description: "You'll use this emaill to sign in to your account", textfieldPlaceholder: "Email", destination: AnyView(CreateUsernameView().navigationBarBackButtonHidden()))
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
    AddEmailView()
}
