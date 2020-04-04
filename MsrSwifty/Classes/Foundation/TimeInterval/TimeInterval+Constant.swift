//
//  TimeInterval+Constant.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import Foundation

public extension TimeInterval {
    static let secondsForMinute = TimeInterval(60)
    static let secondsForHour = TimeInterval(60 * 60)
    static let secondsForDay = TimeInterval(24 * 60 * 60)
}
