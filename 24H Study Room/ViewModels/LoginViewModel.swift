//
//  LoginViewModel.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    private(set) var fireAuthService: FireAuthServicing
    @Published var inputEmail = ""
    @Published var inputPassword = ""
    @Published var emailIsValid = false
    @Published var isShowingInputWarningMessage = false
    @Published var email: Email?
    @Published var password: Password?
    private var subscriptions = Set<AnyCancellable>()
    
    init(fireAuthService: FireAuthServicing) {
        self.fireAuthService = fireAuthService
        
        $inputEmail
            .debounce(for: .seconds(0.6), scheduler: DispatchQueue.main)
            .sink { email in
                self.validateEmail(inputEmail: email)
                self.displayInputWarningMessage()
            }
            .store(in: &subscriptions)
        
        $inputPassword
            .debounce(for: .seconds(0.6), scheduler: DispatchQueue.main)
            .sink { password in
                self.validatePassword(inputPassword: password)
                self.displayInputWarningMessage()
            }
            .store(in: &subscriptions)
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
    
    private func displayInputWarningMessage() {
        if inputEmail.isEmpty || inputPassword.isEmpty {
            self.isShowingInputWarningMessage = false
        } else if email != nil && password != nil {
            self.isShowingInputWarningMessage = false
        } else {
            self.isShowingInputWarningMessage = true
        }
    }
    
    private func validateEmail(inputEmail: String) {
        guard let email = Email(emailString: inputEmail) else {
            self.email = nil
            emailIsValid = false
            return
        }
        self.email = email
        emailIsValid = true
    }
    
    private func validatePassword(inputPassword: String) {
        guard let password = Password(passwordString: inputPassword) else {
            self.password = nil
            return
        }
        self.password = password
    }
}
