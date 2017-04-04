//
//  Button.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class Button: UIButton {
    
    // MARK: Properties
    
    var buttonBackgroundColor: UIColor { return UIColor.clear }
    var cornerRadius: CGFloat { return 0.0 }
    var masksToBounds: Bool { return false }
    var textColor: UIColor { return UIColor.white }
    var borderColor: UIColor? { return nil }
    var image: UIImage? { return nil }
    var imageInsets: UIEdgeInsets { return UIEdgeInsets.zero }
    var imageTintColor: UIColor? { return nil }
    var imageContentMode: UIViewContentMode { return .scaleToFill }
    var buttonAlpha: CGFloat { return 1 }
    
    // MARK: Initialization and deinitialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyStyle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyStyle()
    }
    
    // MARK: NSObject UIKit Additions
    
    override func prepareForInterfaceBuilder() { applyStyle() }
    
    //MARK: Internal Helpers
    
    func toogle() { isSelected = !isSelected }
    
    // MARK: Private Helpers
    
    private func applyStyle() {
        let borderWidth = CGFloat(1.0)
        backgroundColor = buttonBackgroundColor
        setTitleColor(textColor, for: .normal)
        layer.masksToBounds = masksToBounds
        layer.cornerRadius = cornerRadius
        if let color = borderColor {
            layer.borderColor = color.cgColor
            layer.borderWidth = borderWidth
        }
        setImage(image, for: .normal)
        imageView?.tintColor = imageTintColor
        imageView?.contentMode = imageContentMode
        imageEdgeInsets = imageInsets
        alpha = buttonAlpha
    }
}
