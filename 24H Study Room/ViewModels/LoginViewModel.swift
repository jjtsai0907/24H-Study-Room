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

    init(fireAuthService: FireAuthServicing) {
        self.fireAuthService = fireAuthService
    }
    
    func validateEmail(inputEmail: String) {
        guard let email = Email(emailString: inputEmail) else {
            print("email format is wrong")
            emailIsValid = false
            return
        }
        self.email = email
        emailIsValid = true
        print("email format is correct: \(email.emailString)")
    }
    
    func login(email: Email) {
          fireAuthService.login(email: email, password: inputPassword)
      }
}
