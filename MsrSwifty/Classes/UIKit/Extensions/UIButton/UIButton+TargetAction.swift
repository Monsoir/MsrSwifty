//
//  UIButton+TargetAction.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

public extension UIButton {
    func removeAllTargetAction(for event: UIControl.Event) {
        removeTarget(nil, action: nil, for: event)
    }
}
