//
//  RegistrationTests.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class RegistrationTests: BaseClass {
    let entrySteps = EntrySteps()
    let registrationSteps = RegistrationSteps()
    let homeSteps = HomeSteps()
    let loginSteps = LoginSteps()
    
    func testRegistrationWithValidCredentials() {
        let randomNumber = Int.random(in: 1000..<10000)
        let email = Constants.VALID_EMAIL + String(randomNumber) + "@gmail.com"
        
        entrySteps
            .clickOnRegisterButton()
        
        registrationSteps
            .enterEmail(email: email)
            .enterPassword(password: Constants.STRONG_PASSWORD)
            .repeatPassword(password: Constants.STRONG_PASSWORD)
            .clickOnRegisterButton()
 
        // the description of the task assumes succesful registration and that
        // it takes you to the home page but there is always some error
        // even though the registration does happen
        // so i guess the test is supposed to fail given the way it is described
        // this is clearly a bug
        // uncomment the part below to see the test pass
        
        //registrationSteps
        //    .hideKeyboard()
        //    .clickOnSignInButton()
        //
        //loginSteps
        //    .enterEmail(email: email)
        //    .enterPassword(password: Constants.STRONG_PASSWORD)
        //    .clickOnLogInButton()
        
        homeSteps
            .verifyLogoutButtonIsDisplayed()
            .clickOnLogoutButton()
            .clickOnYesButton()
        
        // a short timeout is necessary to fill the field after logout
        sleep(2)
        
        loginSteps
            .enterEmail(email: email)
            .enterPassword(password: Constants.STRONG_PASSWORD)
            .clickOnLogInButton()
        
        homeSteps
            .verifyLogoutButtonIsDisplayed()
    }
}
