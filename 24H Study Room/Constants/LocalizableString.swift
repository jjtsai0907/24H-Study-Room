//
//  LocalizableString.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-14.
//

import SwiftUI

enum LocalizableString: LocalizedStringKey {
    
    /// Login
    case login_title = "login_title"
    case login_email_input_title = "login_email_input_title"
    case login_password_input_title = "login_password_input_title"
    case login_invalid_email_format_message = "login_invalid_email_format_message"
    case login_signup_button_title = "login_signup_button_title"
    case login_login_button_title = "login_login_button_title"
    case login_logout_button_title = "login_logout_button_title"
    
    /// Profile
    case profile_button_title = "profile_button_title"
    case profile_title = "profile_title"
    
    /// Classroom
    case classroom_button_title = "classroom_button_title"
}
