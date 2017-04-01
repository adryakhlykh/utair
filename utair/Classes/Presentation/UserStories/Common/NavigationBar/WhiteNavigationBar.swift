//
//  WhiteNavigationBar.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class WhiteNavigationBar: NavigationBar {
    override var navigationBarBackgroundColor: UIColor { return Color.blue }
    override var navigationBarTintColor: UIColor { return Color.blue }
    override var navigationBarElementTintColor: UIColor { return UIColor.white }
    override var titleImage: UIImage? { return UIImage(named: "logo") }
}
