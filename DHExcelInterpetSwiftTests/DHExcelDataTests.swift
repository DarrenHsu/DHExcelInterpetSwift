//
//  DHExcelDataTests.swift
//  DHExcelInterpetSwiftTests
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import XCTest
@testable import DHExcelInterpetSwift

class DHExcelDataTests: XCTestCase {
    
    func test_getCol_number_true() {
        let excel = DHExcelData(name: "test", cols: 10, rows: 10, statements: [], firstCol: 0, firstRow: 0)
        XCTAssertTrue(excel.getCol(column: "A1") == 0)
        XCTAssertTrue(excel.getCol(column: "B1") == 1)
        XCTAssertTrue(excel.getCol(column: "C1") == 2)
        XCTAssertTrue(excel.getCol(column: "D1") == 3)
        XCTAssertTrue(excel.getCol(column: "AA1") == 26)
        XCTAssertTrue(excel.getCol(column: "AB1") == 27)
        XCTAssertTrue(excel.getCol(column: "AC1") == 28)
        XCTAssertTrue(excel.getCol(column: "AD1") == 29)
    }
    
    func test_getRow_number_true() {
        let excel = DHExcelData(name: "test", cols: 10, rows: 10, statements: [], firstCol: 0, firstRow: 0)
        XCTAssertTrue(excel.getRow(column: "A1") == 1)
        XCTAssertTrue(excel.getRow(column: "B2") == 2)
        XCTAssertTrue(excel.getRow(column: "C3") == 3)
        XCTAssertTrue(excel.getRow(column: "D4") == 4)
        XCTAssertTrue(excel.getRow(column: "AA1") == 1)
        XCTAssertTrue(excel.getRow(column: "AB2") == 2)
        XCTAssertTrue(excel.getRow(column: "AC3") == 3)
        XCTAssertTrue(excel.getRow(column: "AD4") == 4)
    }

}
