//
//  MockFireAuthService.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation

class MockFireAuthService: FireAuthServicing {
    func createUser(email: Email, password: Password, completion: @escaping (Result<UserCredential, CreateUserError>) -> Void) {
        print("MockFireAuthService: Just created a new user")
    }
}
