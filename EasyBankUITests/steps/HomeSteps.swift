//
//  HomeSteps.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class HomeSteps: HomePage {
    func clickOnLogoutButton() -> HomeSteps {
        logoutButton.tap()
        
        return self
    }
    
    func clickOnYesButton() -> HomeSteps {
        yesButton.tap()
        
        return self
    }
    
    func verifyLogoutButtonIsDisplayed() -> HomeSteps {
        XCTAssertTrue(logoutButton.waitForExistence(timeout: 3))
        
        return self
    }
}
