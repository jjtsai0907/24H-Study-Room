//
//  MockFireAuthService.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation

class MockFireAuthService: FireAuthServicing {
    func createUser(email: Email, password: Password, completion: @escaping (Result<UserCredential, Error>) -> Void) {
        print("MockFireAuthService: trying to create a new user")
    }
    
    func login(email: Email, password: Password, completion: @escaping (Result<UserCredential, Error>) -> Void) {
        print("MockFireAuthService: trying to log in an user")
    }
    
    func logout(completion: @escaping (Result<Void, Error>) -> Void) {
        print("MockFireAuthService: trying to log out an user")
    }
}
