//
//  HomePage.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class HomePage: BaseClass {
    var logoutButton: XCUIElement {
        app.navigationBars["Home"].children(matching: .button).element
    }
    
    var yesButton: XCUIElement {
        app.alerts["Logging Out"].scrollViews.otherElements.buttons["Yes"]
    }
}
