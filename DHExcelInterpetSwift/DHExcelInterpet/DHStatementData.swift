//
//  DHStatementData.swift
//  DHExcelInterpetSwift
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

public struct DHStatementData: CustomStringConvertible {
    private var operators: [String]
    private var statements: [String]
    var orignalStatement: String
    var statement: String
    
    public var description: String {
        var str = "\n--------------------------\n"
        str.append("o \(self.orignalStatement)\n")
        str.append("s \(self.orignalStatement)\n")
        (0..<self.statements.count).forEach { i in
            str.append("a \(self.operators[i]) : \(self.statements[i]) \n")
        }
        str.append("--------------------------\n")
        return str
    }
    
    init(orignalStatement: String) {
        self.orignalStatement = orignalStatement
        self.statement = orignalStatement
        self.operators = []
        self.statements = []
    }
    
    public mutating func setOperatorAndStatement(o: String, s: String) {
        self.statements.append(s)
        self.operators.append(o)
    }
    
    public func getLastFullStatement() -> String {
        if self.operators.count == 0 && self.operators.count == 0 {
            return self.statement
        }
        
        let o = self.operators[self.operators.count - 1]
        let s = self.statements[self.statements.count - 1]
        return "\(o)(\(s))";
    }
    
    public func getLastOperator() -> String? {
        guard self.operators.count > 0 else {
            return nil
        }
        
        return self.operators[self.operators.count - 1]
    }
}
