//
//  UIViewController+Hierachy.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

public extension UIViewController {
    /// 获取最顶层的视图控制器
    func topMostViewController() -> UIViewController? {
        if self.presentedViewController == nil {
            return self
        }
        if let navigation = self.presentedViewController as? UINavigationController {
            return navigation.visibleViewController?.topMostViewController()
        }
        if let tab = self.presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        return self.presentedViewController?.topMostViewController()
    }
}
