//
//  RegistrationPage.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class RegistrationPage: BaseClass {
    var emailField: XCUIElement {
        app.textFields["Your Email"]
    }
    
    var passwordField: XCUIElement {
        app.secureTextFields["Password"]
    }
    
    var repeatPasswordField: XCUIElement {
        app.secureTextFields["Repeat Password"]
    }
    
    var signInButton: XCUIElement {
        app.buttons["Sign In"]
    }
    
    var registerButton: XCUIElement {
        app.buttons["Register"]
    }
}
