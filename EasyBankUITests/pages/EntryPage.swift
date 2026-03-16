//
//  EntryPage.swift
//  EasyBankUITests
//
//  Created by IT Academy - 7 on 16.03.26.
//

import XCTest

class EntryPage: BaseClass {
    var logInButton: XCUIElement {
        app.buttons["Log In"]
    }
}
