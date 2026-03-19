//
//  Constants.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

struct Constants {
    // for the sake of simplicity this data is hardcoded
    static var INVALID_EMAIL: String { "invalidEmail" }
    static var VALID_EMAIL: String { "validEmail" }
    static var STRONG_PASSWORD: String { "Tbc@It@Academy@2025.3" }
    static var WEAK_PASSWORD: String { "weakpassword" }
    static var INVALID_EMAIL_FORMAT_MESSAGE: String { "The email address is badly formatted." }
    static var WEAK_PASSWORD_MESSAGE: String { "The supplied auth credential is malformed or has expired." }
}
