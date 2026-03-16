//
//  LoginTests.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class LoginTests: LoginSteps {
    let entrySteps = EntrySteps()
    let loginSteps = LoginSteps()
    
    func testLoginWithInvalidEmailFormat() {
        entrySteps
            .clickOnLogInButton()
        
        loginSteps
            .enterEmail(email: Constants.INVALID_EMAIL)
            .enterPassword(password: Constants.STRONG_PASSWORD)
            .clickOnLogInButton()
            .verifyInvalidEmailMessageText()
    }
    
    func testLoginWithValidEmailAndWeakPassword() {
        entrySteps
            .clickOnLogInButton()
        
        loginSteps
            .enterEmail(email: Constants.VALID_EMAIL)
            .enterPassword(password: Constants.WEAK_PASSWORD)
            .clickOnLogInButton()
            .verifyWeakPasswordMessageText()
    }
}
