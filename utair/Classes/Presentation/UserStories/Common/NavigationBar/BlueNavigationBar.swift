//
//  BlueNavigationBar.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class BlueNavigationBar: NavigationBar {
    override var navigationBarBackgroundColor: UIColor { return Color.blue }
    override var navigationBarTintColor: UIColor { return Color.blue }
    override var navigationBarElementTintColor: UIColor { return UIColor.white }
    override var titleImage: UIImage? { return UIImage(named: "logo") }
}
