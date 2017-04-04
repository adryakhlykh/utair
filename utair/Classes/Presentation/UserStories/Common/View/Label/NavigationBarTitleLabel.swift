//
//  NavigationBarTitleLabel.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class NavigationBarTitleLabel: Label {
    override var labelFont: UIFont { return Font.bold17 }
    override var labelColor: UIColor { return Color.blue }
    override var labelLines: Int { return 1 }
    override var labelLineBreaks: NSLineBreakMode { return NSLineBreakMode.byTruncatingTail }
}
