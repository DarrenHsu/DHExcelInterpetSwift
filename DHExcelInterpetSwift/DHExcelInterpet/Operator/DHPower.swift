//
//  DHPower.swift
//  DHExcelInterpetSwift
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

class DHPower: DHExpression {
    var symbol: String = "^"
    
    private var left: DHExpression
    private var right: DHExpression
    
    init(left: DHExpression, right: DHExpression) {
        self.left = left
        self.right = right
    }
    
    func interpret() -> Decimal {
        debugPrint("cal: \(self.left.interpret()) \(self.symbol) \(self.right.interpret())")
        return pow(self.left.interpret(), self.right.interpret().numberValue.intValue)
    }
}
