//
//  Data+String.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

public extension Data {
    /// Data 转 16 进制字符串
    func hexadecimalString() -> String {
        var hexString = ""
        hexString.reserveCapacity(count * 2)

        for byte in self {
            hexString.append(String(format: "%02X", byte))
        }

        return hexString
    }
}
