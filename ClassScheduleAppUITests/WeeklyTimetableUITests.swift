//
//  WeeklyTimetableUITests.swift
//  ClassScheduleAppUITests
//
//  Created by kusumoto on 2018/11/19.
//

import XCTest

class WeeklyTimetableUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // 火曜3限のセルをタップすると、火曜3限の詳細画面が開く
        // 木曜4限のセルをタップすると、木曜4限の詳細画面が開く
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
