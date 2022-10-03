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
            Text(LocalizableString.login_title.rawValue)
            TextField(LocalizableString.login_email_input_title.rawValue, text: $viewModel.inputEmail)
                .onChange(of: viewModel.inputEmail) { newValue in
                    viewModel.validateEmail(inputEmail: newValue)
                }
            if !viewModel.emailIsValid {
                Text(LocalizableString.login_invalid_email_format_message.rawValue)
            }
                
            TextField(LocalizableString.login_password_input_title.rawValue, text: $viewModel.inputPassword)
                .onChange(of: viewModel.inputPassword) { newValue in
                    viewModel.validatePassword(inputPassword: newValue)
                }
            
            if viewModel.email != nil && viewModel.password != nil {
                
                HStack {
                    Button {
                        viewModel.login(email: viewModel.email!, password: viewModel.password!)
                    } label: {
                        Text(LocalizableString.login_login_button_title.rawValue)
                    }
                    
                    Button {
                        viewModel.createUser(email: viewModel.email!, password: viewModel.password!)
                    } label: {
                        Text(LocalizableString.login_signup_button_title.rawValue)
                    }
                    
                    Button {
                        viewModel.logout()
                    } label: {
                        Text(LocalizableString.login_logout_button_title.rawValue)
                    }
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(viewModel: LoginViewModel(fireAuthService: MockFireAuthService()))
        
        Login(viewModel: LoginViewModel(fireAuthService: MockFireAuthService()))
            .environment(\.locale, .init(identifier: "zh-Hant"))
    }
}
