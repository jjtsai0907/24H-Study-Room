//
//  UserCredential.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-08.
//

import Foundation
import FirebaseAuth

struct UserCredential {
    let currentUser: User
    
    init(currentUser: User) {
        self.currentUser = currentUser
    }
}
