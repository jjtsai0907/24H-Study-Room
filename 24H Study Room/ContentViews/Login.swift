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
                .onChange(of: viewModel.inputEmail) { newValue in
                    viewModel.validateEmail(inputEmail: newValue)
                }
            if !viewModel.emailIsValid {
                Text("Please enter correct email format")
            }
                
            TextField("Password:", text: $viewModel.inputPassword)
                .onChange(of: viewModel.inputPassword) { newValue in
                    viewModel.validatePassword(inputPassword: newValue)
                }
            
            if viewModel.email != nil && viewModel.password != nil {
                
                HStack {
                    Button {
                        viewModel.login(email: viewModel.email!, password: viewModel.password!)
                    } label: {
                        Text("Log in")
                    }
                    
                    Button {
                        viewModel.createUser(email: viewModel.email!, password: viewModel.password!)
                    } label: {
                        Text("Create account")
                    }
                    
                    Button {
                        viewModel.logout()
                    } label: {
                        Text("Log out")
                    }
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
