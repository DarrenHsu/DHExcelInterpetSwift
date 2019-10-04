//
//  DecimalExtension.swift
//  DHExcelInterpetSwift
//
//  Created by Darren Hsu on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

extension Decimal {
    public static func convert(_ value: String) -> Decimal {
        return NSDecimalNumber(string: value).decimalValue
    }
    
    public func roundPlan(scale: Int16 = 0) -> Decimal {
        let s = NSDecimalNumber(decimal: self)
        let handler = NSDecimalNumberHandler(roundingMode: NSDecimalNumber.RoundingMode.plain, scale: Int16(scale), raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        return s.rounding(accordingToBehavior: handler).decimalValue
    }
    
    public var stringValue: String {
        return self.numberValue.stringValue
    }
    
    public var numberValue: NSDecimalNumber {
        return NSDecimalNumber(decimal: self)
    }
}
