//
//  FireAuthServicing.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import Foundation

protocol FireAuthServicing {
    func createUser(email: Email, password: Password, completion: @escaping (Result<UserCredential, Error>) -> Void)
    
    func login(email: Email, password: Password, completion: @escaping (Result<UserCredential, Error>) -> Void)
}
