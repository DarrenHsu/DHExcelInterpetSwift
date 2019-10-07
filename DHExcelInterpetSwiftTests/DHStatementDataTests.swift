//
//  DHStatementDataTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHStatementDataTests: XCTestCase {
    
    func test_init_obj_true() {
        let str = "string"
        let obj = DHStatementData(orignalStatement: str)
        XCTAssertTrue(obj.orignalStatement == str)
        XCTAssertTrue(obj.statement == str)
        XCTAssertTrue(obj.getLastFullStatement() == str)
        XCTAssertTrue(obj.getLastOperator() == nil)
    }
    
    public func test_setOperatorAndStatement_obj_true() {
        let str = "string"
        var obj = DHStatementData(orignalStatement: str)
        obj.setOperatorAndStatement(o: "op1", s: "st1")
        XCTAssertTrue(obj.getLastOperator() == "op1")
        XCTAssertTrue(obj.getLastFullStatement() == "op1(st1)")
    }
}
