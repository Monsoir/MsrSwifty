//
//  UIView+Screenshot.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

public extension UIView {
    var screenshot: UIImage? {
        if #available(iOS 10, *) {
            return takeScreenshot()
        } else {
            return takeScreenshotFallback()
        }
    }

    private func takeScreenshot() -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: frame.size)
        return renderer.image { _ in drawHierarchy(in: bounds, afterScreenUpdates: true) }
    }

    private func takeScreenshotFallback() -> UIImage? {
        let scale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(frame.size, false, scale)
        defer { UIGraphicsEndImageContext() }
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        layer.render(in: context)
        let screenshot = UIGraphicsGetImageFromCurrentImageContext()
        return screenshot
    }
}
