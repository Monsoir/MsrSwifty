//
//  ContainerView.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

public protocol ContainerView {
    associatedtype ViewClass: UIView
    var containerView: ViewClass { get }
}

public extension ContainerView where Self: UIViewController {
    var containerView: ViewClass {
        guard let containerView = self.view as? ViewClass else {
            fatalError("Couldn't cast. Type incompatibility \(#file):\(#line)")
        }
        return containerView
    }
}
