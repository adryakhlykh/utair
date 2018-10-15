//
//  MinusButton.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class MinusButton: Button {
    override var image: UIImage? { return UIImage(named: "minus") }
    override var imageTintColor: UIColor? { return .white }
    override var imageContentMode: UIView.ContentMode { return .left }
    override var buttonAlpha: CGFloat { return 0.5 }
}
