//
//  EntrySteps.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class EntrySteps: EntryPage {
    func clickOnLogInButton() -> EntrySteps {
        logInButton.tap()
        
        return self
    }
    
    func clickOnRegisterButton() -> EntrySteps {
        registerButton.tap()
        
        return self
    }
}
