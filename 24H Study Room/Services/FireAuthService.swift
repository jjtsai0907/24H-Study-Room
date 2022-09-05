//
//  FireAuthService.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation
import FirebaseAuth

class FireAuthService: FireAuthServicing {
    
    func login(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            print("just created a new user \(String(describing: authResult?.user.email))")
        }
    }
}
