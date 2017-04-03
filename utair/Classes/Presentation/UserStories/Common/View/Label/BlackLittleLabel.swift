//
//  BlackLittleLabel.swift
//  utair
//
//  Created by Anton Dryakhlykh on 04.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class BlackLittleLabel: Label {
    override var labelFont: UIFont { return Font.regular13 }
    override var labelColor: UIColor { return .black }
}
