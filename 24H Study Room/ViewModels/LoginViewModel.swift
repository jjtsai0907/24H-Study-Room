//
//  LoginViewModel.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation

class LoginViewModel: ObservableObject {
    private(set) var fireAuthService: FireAuthServicing
    @Published var inputEmail = ""
    @Published var inputPassword = ""
    @Published var emailIsValid = false
    @Published var email: Email?
    @Published var password: Password?
    
    init(fireAuthService: FireAuthServicing) {
        self.fireAuthService = fireAuthService
    }
    
    func validateEmail(inputEmail: String) {
        guard let email = Email(emailString: inputEmail) else {
            self.email = nil
            emailIsValid = false
            return
        }
        self.email = email
        emailIsValid = true
    }
    
    func validatePassword(inputPassword: String) {
        guard let password = Password(passwordString: inputPassword) else {
            self.password = nil
            return
        }
        self.password = password
    }
    
    func login(email: Email, password: Password) {
        fireAuthService.login(email: email, password: password)
    }
}
