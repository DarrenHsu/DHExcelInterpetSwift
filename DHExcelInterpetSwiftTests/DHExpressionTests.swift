//
//  ExpressionTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHExpressionTests: XCTestCase {
    
    func testExpression_isNumeric_true() {
        XCTAssertTrue("7".isNumeric())
    }
    
    func testExpression_isNumeric_false() {
        XCTAssertFalse("abc".isNumeric())
    }
}
