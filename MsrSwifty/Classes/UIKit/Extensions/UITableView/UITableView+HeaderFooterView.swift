//
//  UITableView+HeaderFooterView.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

public extension UITableView {

    /// 使用自动布局时，动态设置 table view 的 tableHeaderView 的高度
    /// - https://stackoverflow.com/a/28102157/5211544
    /// - Parameter headerView: 即将设置的 tableHeaderView
    func setAndLayoutTableHeaderView(_ headerView: UIView) {
        tableHeaderView = headerView
        headerView.setNeedsLayout()
        headerView.layoutIfNeeded()
        headerView.frame.size = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        tableHeaderView = headerView
    }

    /// 使用自动布局时，动态设置 table view 的 tableFooterView 的高度
    /// - Parameter footerView: 即将设置的 tableFooterView
    func setAndLayoutTableFooterView(_ footerView: UIView) {
        tableFooterView = footerView
        footerView.setNeedsLayout()
        footerView.layoutIfNeeded()
        footerView.frame.size = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        tableFooterView = footerView
    }
}
