//
//  String+Version.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

public extension CompatibleValue {
    var asVersion: Wrapper<Self> {
        return Wrapper(self)
    }
}

public extension Wrapper where Base == String {
    /// 是否新版本
    func isNewerThan(_ compareVersion: String) -> Bool {
        if base.compare(compareVersion, options: NSString.CompareOptions.numeric) == ComparisonResult.orderedDescending {
            return true
        }
        return false
    }
}
