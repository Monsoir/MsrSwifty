//
//  Int+Design.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

public extension Int {
    /// 结合实际硬件的尺寸，返回按比例缩放的值
    ///
    /// - Parameters:
    ///   - designBase: 设计稿上的基值
    ///   - realBase: 实际的基值
    /// - Returns: 按比例缩放后的值
    func scale(on designBase: CGFloat = 375, realBase: CGFloat = UIScreen.main.bounds.width) -> CGFloat {
        return CGFloat(integerLiteral: self).scale(on: designBase, realBase: realBase)
    }
}
