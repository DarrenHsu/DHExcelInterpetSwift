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
}
