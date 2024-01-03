//
//  SignupProcessView.swift
//  InstagramTutorial
//
//  Created by CJ Davis on 12/8/23.
//

import SwiftUI

struct SignupProcessView: View {
    
    @Binding var text: String
    let title: String
    let description: String
    let textfieldPlaceholder: String
    let destination: AnyView
    
    var body: some View {
        VStack(spacing: 12) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text(description)
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 12)
            
            TextField(textfieldPlaceholder, text: $text)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)

            NavigationLink {
                destination
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)

            Spacer()
        }
    }
}

#Preview {
    SignupProcessView(text: .constant(""), title: "Add your email", description: "You'll use this emaill to sign in to your account", textfieldPlaceholder: "Email", destination: AnyView(CreateUsernameView()))
}
