//
//  Password.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-07.
//

import Foundation

struct Password {
    let passwordString: String
    
    init?(passwordString: String) {
        guard Self.isValid(passwordString: passwordString) else {
            return nil
        }
        self.passwordString = passwordString
    }
    
    private static func isValid(passwordString: String) -> Bool {
        guard passwordString.count >= 6 else {
            return false
        }
        return true
    }
}
