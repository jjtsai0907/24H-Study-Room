//
//  FireAuthService.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation
import FirebaseAuth

class FireAuthService: FireAuthServicing {
    
    func login(email: Email, password: String) {
        Auth.auth().createUser(withEmail: email.emailString, password: password) { authResult, error in
            guard let user = authResult?.user, error == nil else {
                print("There is error to create a new account: \(String(describing: error?.localizedDescription))")
                return
            }
            print("just created a new user \(String(describing: user.email))")
        }
    }
}

