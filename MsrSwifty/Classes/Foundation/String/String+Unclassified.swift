//
//  String+Unclassified.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

public extension String {
    /// 打 call
    func call() -> Bool {
        let result = components(separatedBy: CharacterSet.init(charactersIn: "0123456789-+()").inverted).joined(separator: "")
        if let url = URL(string: "tel:\(result)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            return true
        }

        return false
    }
}
