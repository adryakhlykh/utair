//
//  Label.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class Label: UILabel {
    
    // MARK: Properties
    
    var labelFont: UIFont { return UIFont.systemFont(ofSize: UIFont.systemFontSize) }
    
    var labelColor: UIColor { return UIColor.white }
    
    var labelLines: Int { return 0 }
    
    var labelLineBreaks: NSLineBreakMode { return NSLineBreakMode.byWordWrapping }
    
    var textAlpha: CGFloat { return 1 }
    
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
    
    fileprivate func applyStyle() {
        font = labelFont
        textColor = labelColor
        numberOfLines = labelLines
        lineBreakMode = labelLineBreaks
        alpha = textAlpha
    }
}
