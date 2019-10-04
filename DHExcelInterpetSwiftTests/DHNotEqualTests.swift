//
//  DHNotEqualTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by Darren Hsu on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHNotEqualTests: XCTestCase {
    
    func test_interpret_integer_true() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(10)
        let ex = DHNotEqual(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == DHBoolValue.false.rawValue)
    }
    
    func test_interpret_double_true() {
        let n1 = DHNumber(10.0)
        let n2 = DHNumber(10)
        let ex = DHNotEqual(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == DHBoolValue.false.rawValue)
    }
    
    func test_interpret_integer_false() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(2)
        let ex = DHNotEqual(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == DHBoolValue.true.rawValue)
    }

}
