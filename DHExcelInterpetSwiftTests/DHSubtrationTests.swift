//
//  DHSubtrationTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHSubtrationTests: XCTestCase {
    
    func testDHSubtration_interpret_true() {
        let n1 = DHNumber(4)
        let n2 = DHNumber(3)
        let sub = DHSubtration(left: n1, right: n2)
        XCTAssertTrue(sub.interpret() == 1)
    }

    func testDHSubtration_interpret_false() {
        let n1 = DHNumber(4)
        let n2 = DHNumber(3)
        let sub = DHSubtration(left: n1, right: n2)
        XCTAssertFalse(sub.interpret() == 3)
    }
}
