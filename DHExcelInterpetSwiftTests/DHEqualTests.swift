//
//  DHEqualTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHEqualTests: XCTestCase {
    
    func test_interpret_integer_true() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(10)
        let div = DHEqual(left: n1, right: n2)
        XCTAssertTrue(div.interpret() == DHBoolValue.true.rawValue)
    }
    
    func test_interpret_doubleAndInteger_true() {
        let n1 = DHNumber(10.0)
        let n2 = DHNumber(10)
        let div = DHEqual(left: n1, right: n2)
        XCTAssertTrue(div.interpret() == DHBoolValue.true.rawValue)
    }
    
    func test_interpret_integer_false() {
        let n1 = DHNumber(10)
        let n2 = DHNumber(2)
        let div = DHEqual(left: n1, right: n2)
        XCTAssertTrue(div.interpret() == DHBoolValue.false.rawValue)
    }

}
