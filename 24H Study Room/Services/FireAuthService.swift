//
//  FireAuthService.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation
import FirebaseAuth

class FireAuthService: FireAuthServicing {
    
    func createUser(email: Email, password: Password, completion: @escaping (Result<UserCredential, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email.emailString, password: password.passwordString) { authResult, error in
            guard let user = authResult?.user, error == nil else {
                completion(.failure(error!))
                print("FireAuthService: there is error to create a new account: \(String(describing: error?.localizedDescription))")
                return
            }
            completion(.success(UserCredential(currentUser: user)))
        }
    }
}
