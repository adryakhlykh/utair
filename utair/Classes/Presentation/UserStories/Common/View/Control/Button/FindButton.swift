//
//  FindButton.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class FindButton: Button {
    override var buttonBackgroundColor: UIColor { return Color.darkBlue }
    override var cornerRadius: CGFloat { return 26 }
    override var masksToBounds: Bool { return true }
    override var textColor: UIColor { return .white }
}
