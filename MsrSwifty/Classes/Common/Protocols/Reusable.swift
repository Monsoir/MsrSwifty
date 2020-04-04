//
//  Reusable.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit
import MapKit

public protocol Reusable: class {

    /// 根据类名，生成复用标识，默认使用类名
    /// - Parameter addOn: 当对于相同类名需要生成不同标识时，此变量用来添加额外信息
    static func reuseIdentifier(_ addOn: String?) -> String
}
public extension Reusable {
    static func reuseIdentifier(_ addOn: String? = nil) -> String {
        if let addOn = addOn {
            return "\(String(describing: self))-\(addOn)"
        }
        return String(describing: self)
    }
}
extension UICollectionViewCell: Reusable {}
extension UITableViewCell: Reusable {}
extension UITableViewHeaderFooterView: Reusable {}
extension MKAnnotationView: Reusable {}
