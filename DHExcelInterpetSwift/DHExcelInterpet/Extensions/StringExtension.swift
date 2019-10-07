//
//  StringExtension.swift
//  DHExcelInterpetSwift
//
//  Created by wen on 2019/10/7.
//  Copyright © 2019 wen. All rights reserved.
//

import Foundation

extension String {
    
    public func isNumeric() -> Bool {
        return self.range(of: #"-?\d+(\.\d+)?"#, options: .regularExpression) != nil
    }
    
    public func match(pattern: String, handleResult: ((String) -> Void)?)  -> Bool {
        var b = false
        if let regex = try? NSRegularExpression(pattern: pattern, options: []) {
            let range = NSRange(self.startIndex..<self.endIndex, in: self)
            let matches = regex.matches(in: self, options: [], range: range)
            matches.forEach {
                let resultRange = Range($0.range, in: self)!
                let r = self[resultRange]
                handleResult?(String(r))
            }
            b = matches.count > 0
        }
        return b
    }
}
