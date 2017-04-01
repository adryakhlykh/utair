//
//  TransparentBlueLabel.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class TransparentBlueLabel: Label {
    override var labelFont: UIFont { return Font.regular11 }
    override var labelColor: UIColor { return .white }
    override var textAlpha: CGFloat { return 0.5 }
}
