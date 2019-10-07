//
//  DHColonTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHColonTests: XCTestCase {
    
    func test_interpret_integer_true() {
        let n1 = DHNumber(2)
        let n2 = DHNumber(3)
        let ex = DHColon(left: n1, right: n2)
        XCTAssertTrue(ex.interpret() == 2)
    }

    func test_interpret_integer_false() {
        let n1 = DHNumber(2)
        let n2 = DHNumber(3)
        let ex = DHColon(left: n1, right: n2)
        XCTAssertFalse(ex.interpret() == 3)
    }
}
