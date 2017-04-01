//
//  DateTextField.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class DateTextField: TextField {
    override var viewBackgroundColor: UIColor { return Color.blue }
    override var textFont: UIFont { return Font.bold13 }
    override var elementsColor: UIColor { return UIColor.clear }
    override var alignment: NSTextAlignment { return .left }
    override var placeholderFont: UIFont { return Font.bold13 }
    override var fontColor: UIColor { return .white }
}
