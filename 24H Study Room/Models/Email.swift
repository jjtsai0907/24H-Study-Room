//
//  Email.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-06.
//

import Foundation

struct Email {
    let emailString: String
    
    init?(emailString: String) {
        guard Self.isValid(emailString: emailString) else {
            return nil
        }
        self.emailString = emailString
    }
    
    private static func isValid(emailString: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        guard emailString.range(of: emailRegEx, options: .regularExpression, range: nil, locale: nil) != nil else {
            return false
        }
        return true
    }
}
