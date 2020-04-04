//
//  String+Size.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

public extension String {

    /// 获取字符串的宽度和高度
    /// - Parameters:
    ///   - font: 字体大小
    ///   - maxSize: 允许的最大宽度和高度
    func getStringSize(withFont font: UIFont, maxSize: CGSize) -> CGSize {
        let options: NSStringDrawingOptions = [.usesLineFragmentOrigin, .usesFontLeading]
        let attributes = [NSAttributedString.Key.font: font]
        let rect = self.boundingRect(with: maxSize, options: options, attributes: attributes, context: nil)
        return rect.size
    }
}
