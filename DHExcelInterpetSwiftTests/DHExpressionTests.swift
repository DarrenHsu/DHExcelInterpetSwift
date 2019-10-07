//
//  ExpressionTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by Darren Hsu on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHExpressionTests: XCTestCase {
    
    func test_isNumeric_integer_true() {
        XCTAssertTrue("7".isNumeric())
    }
    
    func test_isNumeric_notInteger_false() {
        XCTAssertFalse("abc".isNumeric())
    }
    
    func test_match_inString_true() {
        let check = "A1, B2, C3, AA1, AB2, AC3".match(pattern: "[A-Z]{1,2}") {
            print("\($0)")
        }
        XCTAssertTrue(check)
    }
    
    func test_match_inString_false() {
        let check = "1, 2, 3, 4, 5".match(pattern: "[A-Z]{1,2}") {
            print("\($0)")
        }
        XCTAssertFalse(check)
    }
}
