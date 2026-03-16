//
//  LoginSteps.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class LoginSteps: LoginPage {
    func enterEmail(email: String) -> LoginSteps {
        emailField.tap()
        emailField.typeText(email)
        
        return self
    }
    
    func enterPassword(password: String) -> LoginSteps {
        passwordField.tap()
        passwordField.typeText(password)
        
        return self
    }
    
    func clickOnLogInButton() -> LoginSteps {
        logInButton.tap()
        
        return self
    }
    
    func verifyInvalidEmailMessageText() -> LoginSteps {
        XCTAssertEqual(emailBadFormatMessage.label, Constants.INVALID_EMAIL_FORMAT_MESSAGE)
        
        return self
    }
}
