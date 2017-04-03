//
//  NavigationBar.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class NavigationBar: UINavigationBar {
    
    // MARK: Properties
    
    var navigationBarBackgroundColor: UIColor { return UIColor.white }
    var navigationBarTintColor: UIColor { return UIColor.white }
    var navigationBarElementTintColor: UIColor { return UIColor.white }
    var titleColor: UIColor { return UIColor.white }
    var titleImage: UIImage? { return nil }
    
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
    
    // MARK: Private Helpers
    
    private func applyStyle() {
        tintColor = navigationBarElementTintColor
        backgroundColor = navigationBarBackgroundColor
        barTintColor = navigationBarTintColor
        isTranslucent = true
        barStyle = .black
        shadowImage = UIImage()
        setBackgroundImage(UIImage(), for: .default)
        titleTextAttributes = [
            NSForegroundColorAttributeName : titleColor,
        ]
        if let image = titleImage { topItem?.titleView = UIImageView(image: image) }
    }
}
