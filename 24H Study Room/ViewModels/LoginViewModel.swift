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
    
    func createUser(email: Email, password: Password) {
        fireAuthService.createUser(email: email, password: password, completion: { result in
            switch result {
            case .success(let user):
                print("LoginViewModel, createUser(): \(user.currentUser)")
            case .failure(let error):
                print("LoginViewModel, createUser(): \(error.localizedDescription)")
            }
        })
    }
    
    func login(email: Email, password: Password) {
        fireAuthService.login(email: email, password: password) { result in
            switch result {
            case .success(let user):
                print("LoginViewModel, login(): \(user.currentUser)")
            case .failure(let error):
                print("LoginViewModel, login(): \(error.localizedDescription)")
            }
        }
    }
    
    func logout() {
        fireAuthService.logout { result in
            switch result {
            case .success():
                print("LoginViewModel, logout(): you loged out")
            case .failure(let error):
                print(error)
            }
        }
    }
}
