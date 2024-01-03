//
//  CreateUsernameView.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/8/23.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        SignupProcessView(text: $viewModel.username, title: "Create username", description: "Pick a username for your new account. You can always change it later.", textfieldPlaceholder: "Username", destination: AnyView(CreatePasswordView().navigationBarBackButtonHidden()))
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
    CreateUsernameView()
}
