//
//  DHDivisionIntegerTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHDivisionIntegerTests: XCTestCase {
    
    func test_interpret_integer_true() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(2)
        let div = DHDivisionInteger(left: n1, right: n2)
        XCTAssertTrue(div.interpret() == 5)
    }
    
    func test_interpret_integer_false() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(2)
        let div = DHDivisionInteger(left: n1, right: n2)
        XCTAssertFalse(div.interpret() == 3)
    }

    func test_interpret_double_noDecimalPoint() {
        let n1 = DHNumber(10.5)
        let n2 = DHNumber(2.1)
        let div = DHDivisionInteger(left: n1, right: n2)
        XCTAssertTrue(div.interpret() == 5)
    }
}
