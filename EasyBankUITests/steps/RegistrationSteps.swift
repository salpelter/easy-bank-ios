//
//  RegistrationSteps.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class RegistrationSteps: RegistrationPage {
    func enterEmail(email: String) -> RegistrationSteps {
        emailField.tap()
        emailField.typeText(email)
        
        return self
    }
    
    func enterPassword(password: String) -> RegistrationSteps {
        passwordField.tap()
        passwordField.typeText(password)
        
        return self
    }
    
    func repeatPassword(password: String) -> RegistrationSteps {
        repeatPasswordField.tap()
        repeatPasswordField.typeText(password)
        
        return self
    }
    
    func clickOnRegisterButton() -> RegistrationSteps {
        registerButton.tap()
        
        return self
    }
    
    func clickOnSignInButton() -> RegistrationSteps {
        signInButton.tap()
        
        return self
    }
    
    // for the related test to pass it's necessary to
    // wait for registration to complete
    // and unfocus from the registration button
    // before being able to click on the sign in link
    func hideKeyboard() -> RegistrationSteps {
        sleep(3)
        // must focus on any field
        emailField.tap()
        
        return self
    }
}
