//
//  DHExcelData.swift
//  DHExcelInterpetSwift
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

public enum DHColumnType {
    case None
    case All
    case Row
    case Cell
    case AbsoluteColumn
}

public struct DHExcelData {

    private var sheets: [String: [[Decimal]]]
    private var statements: [String]
    private var table: [[Decimal]]
    
    private var rowCount: Int, colCount: Int
    private var currentRow: Int, currentCol: Int
    private var firstRow: Int, firstCol: Int
    
    init(name: String, cols: Int, rows: Int, statements: [String], firstCol: Int, firstRow: Int) {
        self.sheets = [:]
        self.table = []
        self.statements = statements
        self.rowCount = rows
        self.colCount = cols
        
        self.currentRow = firstRow
        self.currentCol = firstCol
        
        self.firstRow = firstRow
        self.firstCol = firstCol
        
        (0..<cols).forEach { (i) in
            (0..<rows).forEach { l in
                self.table[i][l] = 0
            }
        }
        
        self.sheets[name] = table
    }
    
    public func getTable(name: String) -> [[Decimal]]? {
        return self.sheets[name]
    }
    
    public func getCol(column: String) -> Int {
        
        
        return -1;
    }
    

}
