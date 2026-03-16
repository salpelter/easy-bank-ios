//
//  LoginTests.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class LoginTests: BaseClass {
    let entrySteps = EntrySteps()
    let loginSteps = LoginSteps()
    
    func testLoginWithInvalidEmailFormat() {
        let randomNumber = Int.random(in: 1000..<10000)
        let email = Constants.INVALID_EMAIL + String(randomNumber)
        
        entrySteps
            .clickOnLogInButton()
        
        loginSteps
            .enterEmail(email: email)
            .enterPassword(password: Constants.STRONG_PASSWORD)
            .clickOnLogInButton()
            .verifyInvalidEmailMessageText()
    }
    
    func testLoginWithValidEmailAndWeakPassword() {
        let randomNumber = Int.random(in: 1000..<10000)
        let email = Constants.VALID_EMAIL + String(randomNumber) + "@gmail.com"
        
        entrySteps
            .clickOnLogInButton()
        
        loginSteps
            .enterEmail(email: email)
            .enterPassword(password: Constants.WEAK_PASSWORD)
            .clickOnLogInButton()
            .verifyWeakPasswordMessageText()
    }
}
