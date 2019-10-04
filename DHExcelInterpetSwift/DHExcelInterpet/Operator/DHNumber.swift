//
//  DHNumber.swift
//  DHExcelInterpetSwift
//
//  Created by Darren Hsu on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

class DHNumber: DHExpression {
    
    var symbol: String = ""
    
    private var operand: Decimal
    
    init(_ operand: Decimal) {
        self.operand = operand
    }
    
    func interpret() -> Decimal {
        return self.operand
    }
}
