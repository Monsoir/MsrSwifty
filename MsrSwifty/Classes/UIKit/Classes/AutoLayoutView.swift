//
//  MsrAutoLayoutView.swift
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

import UIKit

public class AutoLayoutView: UIView {
    override public class var requiresConstraintBasedLayout: Bool { return true }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    override public func updateConstraints() {
        makeConstraints()
        super.updateConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setupSubviews() {}

    public func makeConstraints() {}
}
