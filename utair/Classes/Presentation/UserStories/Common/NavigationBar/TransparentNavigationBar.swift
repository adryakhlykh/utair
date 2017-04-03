//
//  TransparentNavigationBar.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class TransparentNavigationBar: NavigationBar {
    override var navigationBarBackgroundColor: UIColor { return .clear }
    override var navigationBarTintColor: UIColor { return .clear }
    override var navigationBarElementTintColor: UIColor { return Color.blue }
    override var titleImage: UIImage? { return UIImage(named: "logo") }
    override var titleColor: UIColor { return Color.blue }
}
