//
//  CompatibleValue.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

// 针对对象类型, object
public protocol Compatible: AnyObject {}

// 针对值类型, 如 String
public protocol CompatibleValue {}

// 中转类型
public struct Wrapper<Base> {
    let base: Base
    init(_ base: Base) { self.base = base }
}

// 声明以下类型：可以自定义命名空间

// 值类型
extension String: CompatibleValue {}
extension Int: CompatibleValue {}

// 对象类型: to be continued...
