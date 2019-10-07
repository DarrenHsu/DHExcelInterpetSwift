//
//  Expression.swift
//  DHExcelInterpetSwift
//
//  Created by Darren Hsu on 2019/10/4.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

public protocol DHExpression {
    var symbol: String { get set }
    func interpret() -> Decimal
}
