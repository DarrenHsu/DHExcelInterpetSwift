//
//  DHRemainderTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by Darren Hsu on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHRemainderTests: XCTestCase {

    func test_interpret_integer_true() {
        let n1 = DHNumber(11)
        let n2 = DHNumber(3)
        let ex = DHRemainder(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == 2)
    }
    
    func test_interpret_double_true() {
        let n1 = DHNumber(11.1)
        let n2 = DHNumber(3.0)
        let ex = DHRemainder(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == 2)
    }
    
    func test_interpret_integer_false() {
        let n1 = DHNumber(11)
        let n2 = DHNumber(3)
        let ex = DHRemainder(left: n1, right: n2)
        XCTAssertFalse(ex.interpret() == 1)
    }

}
