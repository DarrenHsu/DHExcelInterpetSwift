//
//  DHRemainder.swift
//  DHExcelInterpetSwift
//
//  Created by wen on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

class DHRemainder: DHExpression {
    var symbol: String = "%"
    
    private var left: DHExpression
    private var right: DHExpression
    
    init(left: DHExpression, right: DHExpression) {
        self.left = left
        self.right = right
    }
    
    func interpret() -> Decimal {
        debugPrint("cal: \(self.left.interpret()) \(self.symbol) \(self.right.interpret())")
        return Decimal(self.left.interpret().numberValue.intValue % self.right.interpret().numberValue.intValue)
    }
}

