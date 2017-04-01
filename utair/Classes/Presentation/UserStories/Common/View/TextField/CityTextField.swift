//
//  CityTextField.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class CityTextField: TextField {
    override var viewBackgroundColor: UIColor { return Color.blue }
    override var textFont: UIFont { return Font.bold17 }
    override var elementsColor: UIColor { return .white }
    override var alignment: NSTextAlignment { return .left }
    override var placeholderFont: UIFont { return Font.bold17 }
    override var fontColor: UIColor { return .white }
    override var placeholderColor: UIColor { return Color.blakedBlue }
}
