//
//  BoldWhiteLabel.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class BoldWhiteLabel: Label {
    override var labelFont: UIFont { return Font.bold17 }
    override var labelColor: UIColor { return .white }
}
