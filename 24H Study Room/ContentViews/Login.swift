//
//  Login.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import SwiftUI

struct Login: View {
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        VStack {
            Text("Please login/ sign up")
            TextField("Email:", text: $viewModel.inputEmail)
            TextField("Password:", text: $viewModel.inputPassword)
            
            if !viewModel.inputEmail.isEmpty && !viewModel.inputPassword.isEmpty {
                Button {
                    viewModel.login()
                } label: {
                    Text("Create account")
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(viewModel: LoginViewModel(fireAuthService: MockFireAuthService()))
    }
}
