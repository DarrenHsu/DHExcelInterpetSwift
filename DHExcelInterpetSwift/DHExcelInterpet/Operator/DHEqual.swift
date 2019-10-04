//
//  DHEqual.swift
//  DHExcelInterpetSwift
//
//  Created by wen on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

class DHEqual: DHExpression {
    var symbol: String = "="
    
    private var left: DHExpression
    private var right: DHExpression
    
    init(left: DHExpression, right: DHExpression) {
        self.left = left
        self.right = right
    }
    
    func interpret() -> Decimal {
        debugPrint("cal: \(self.left.interpret()) \(self.symbol) \(self.right.interpret())")
        return self.left.interpret() == self.right.interpret() ? DHBoolValue.true.rawValue : DHBoolValue.false.rawValue
    }
}

