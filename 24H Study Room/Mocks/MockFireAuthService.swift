//
//  MockFireAuthService.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation

class MockFireAuthService: FireAuthServicing {
    func login(email: String, password: String) {
        print("Just created a new user")
    }
}
