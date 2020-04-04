//
//  CGFloat+Unclassified.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

public extension CGFloat {
    /// 结合实际硬件的尺寸，返回按比例缩放的值
    ///
    /// - Parameters:
    ///   - designBase: 设计稿上的基值
    ///   - realBase: 实际的基值
    /// - Returns: 按比例缩放后的值
    func scale(on designBase: CGFloat = 375, realBase: CGFloat = UIScreen.main.bounds.width) -> CGFloat {
        /*
             设计稿按钮宽度值(self)         实际按钮宽度(return)
           -------------------------  = ----------------------
            设计稿屏幕宽度(designBase)      实际屏幕宽度(realBase)
        */

        let ratio = self / designBase
        return realBase * ratio
    }
}
