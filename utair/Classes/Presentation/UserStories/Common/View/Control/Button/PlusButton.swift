//
//  PlusButton.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class PlusButton: Button {
    override var image: UIImage? { return UIImage(named: "icnGlobalPlusGiant") }
    override var imageTintColor: UIColor? { return .white }
    override var imageContentMode: UIView.ContentMode { return .scaleAspectFit }
    override var buttonAlpha: CGFloat { return 0.5 }
}
