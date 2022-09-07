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

    init(fireAuthService: FireAuthServicing) {
        self.fireAuthService = fireAuthService
    }
    
    func login() {
        guard let email = Email(emailString: inputEmail) else {
            print("email error while loggingin")
            return
        }
          fireAuthService.login(email: email, password: inputPassword)
      }
}
