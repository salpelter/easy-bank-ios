//
//  LoginPage.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class LoginPage: BaseClass {
    var emailField: XCUIElement {
        app.textFields["Your Email"]
    }
    
    var passwordField: XCUIElement {
        app.secureTextFields["Password"]
    }
    
    var logInButton: XCUIElement {
        app.buttons["Log In"]
    }
    
    var emailBadFormatMessage: XCUIElement {
        app.staticTexts[Constants.INVALID_EMAIL_FORMAT_MESSAGE]
    }
    
    var weakPasswordMessage: XCUIElement {
        app.staticTexts[Constants.WEAK_PASSWORD_MESSAGE]
    }
}
