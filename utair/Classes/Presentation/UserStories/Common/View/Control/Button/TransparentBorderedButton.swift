//
//  TransparentBorderedButton.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class TransparentBorderedButton: Button {
    override var textColor: UIColor { return .white }
    override var masksToBounds: Bool { return true }
    override var cornerRadius: CGFloat { return 4 }
    override var borderColor: UIColor? { return .white }
    override var image: UIImage? { return UIImage(named: "icnGlobalPlusGiant") }
    override var imageTintColor: UIColor? { return .white }
    override var imageContentMode: UIViewContentMode { return .scaleAspectFit }
    override var imageInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 14, left: 0, bottom: 14, right: 16)
    }
}
