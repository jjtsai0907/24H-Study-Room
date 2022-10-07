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
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let user = authResult?.user else {
                completion(.failure(FireAuthServiceError.emptyUserError))
                return
            }
            
            completion(.success(UserCredential(currentUser: user)))
        }
    }
    
    func login(email: Email, password: Password, completion: @escaping (Result<UserCredential, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email.emailString, password: password.passwordString) { authResult, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let user = authResult?.user else {
                completion(.failure(FireAuthServiceError.emptyUserError))
                return
            }
            
            completion(.success(UserCredential(currentUser: user)))
        }
    }
    
    func logout(completion: @escaping (Result<Void, Error>) -> Void) {
        do {
            try Auth.auth().signOut()
            completion(.success(()))
        } catch {
            completion(.failure(error))
        }
    }
    
    /// FireAuthServiceError

    private enum FireAuthServiceError: Error {
        case emptyUserError
    }
}


