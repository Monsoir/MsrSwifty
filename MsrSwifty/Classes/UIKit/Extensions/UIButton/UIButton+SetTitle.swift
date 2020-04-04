//
//  UIButton+SetTitle.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

public extension UIButton {
    func setTitleWithoutFlashing(_ title: String,
                                 for state: UIControl.State = .normal) {
        UIView.setAnimationsEnabled(false)

        setTitle(title, for: state)
        layoutIfNeeded()

        UIView.setAnimationsEnabled(true)
    }

    func setAttributedTitleWithoutFlashing(_ title: NSAttributedString,
                                           for state: UIControl.State = .normal) {
        UIView.setAnimationsEnabled(false)

        setAttributedTitle(title, for: state)
        layoutIfNeeded()

        UIView.setAnimationsEnabled(true)
    }
}
