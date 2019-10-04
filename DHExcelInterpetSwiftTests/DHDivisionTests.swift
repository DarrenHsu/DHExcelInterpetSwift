//
//  DHDivisionTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by Darren Hsu on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHDivisionTests: XCTestCase {

    func test_interpret_integer_true() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(2)
        let ex = DHDivision(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == 5)
    }
    
    func test_interpret_integer_false() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(2)
        let ex = DHDivision(left: n1, right: n2)
        XCTAssertFalse(ex.interpret() == 5.1)
    }
    
    func test_interpret_doubleAndInteger_isDecimalPoint() {
        let n1 = DHNumber(3.75)
        let n2 = DHNumber(3)
        let ex = DHDivision(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == 1.25)
    }

    func test_interpret_integer_isBigDecimalPoint() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(3)
        let ex = DHDivision(left: n1, right: n2)
        let r: Decimal = Decimal.convert("3.333")
        XCTAssertTrue(ex.interpret().roundPlan(scale: 3).stringValue == r.stringValue)
    }
}
