//
//  SystemDirectory.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

/// 系统文件夹路径
public enum SystemDirectory {
    case document
    case caches
    case library
    case tmp

    var url: URL? {
        switch self {
        case .document:
            return try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        case .library:
            return try? FileManager.default.url(for: .libraryDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        case .caches:
            return try? FileManager.default.url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        case .tmp:
            return FileManager.default.temporaryDirectory
        }
    }
}
