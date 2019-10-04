//
//  DHAddtionTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHAddtionTests: XCTestCase {
    
    func test_interpret_integer_true() {
        let n1 = DHNumber(3)
        let n2 = DHNumber(4)
        let add = DHAddtion(left: n1, right: n2)
        XCTAssertTrue(add.interpret() == 7)
    }

    func test_interpret_integer_false() {
        let n1 = DHNumber(3)
        let n2 = DHNumber(4)
        let add = DHAddtion(left: n1, right: n2)
        XCTAssertFalse(add.interpret() == 8)
    }
}
