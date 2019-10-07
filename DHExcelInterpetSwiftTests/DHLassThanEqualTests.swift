//
//  DHLassThanEqualTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHLassThanEqualTests: XCTestCase {
    
    func test_interpret_integer_true() {
        let n1 = DHNumber(2)
        let n2 = DHNumber(3)
        let ex = DHLassThanEqual(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == DHBoolValue.true.rawValue)
    }
    
    func test_interpret_sameInteger_true() {
        let n1 = DHNumber(2)
        let n2 = DHNumber(2)
        let ex = DHLassThanEqual(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == DHBoolValue.true.rawValue)
    }

    func test_interpret_integer_false() {
        let n1 = DHNumber(2)
        let n2 = DHNumber(3)
        let ex = DHLassThanEqual(left: n1, right: n2)
        XCTAssertFalse(ex.interpret() == DHBoolValue.false.rawValue)
    }
}

