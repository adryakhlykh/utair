//
//  Blocks.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

/// Segue configuration block with Module Input parameter.
typealias ConfigurationBlock = (ModuleInput) -> (ModuleOutput?)

/// Keyboard showed/hidden block with Int parameter.
typealias KeyboardHeightBlock = (CGFloat) -> ()

/// Empty block without parameter.
typealias EmptyBlock = () -> ()

/// Error block with ErrorType parameter.
typealias ErrorBlock = (ErrorType) -> ()

/// Item clicked block with String parameter.
typealias StringBlock = (String) -> ()

/// Item clicked block with String parameter.
typealias IntBlock = (Int) -> ()

/// Item clicked block with City parameter.
typealias CityBlock = (City) -> ()

/// Operation result block with Data parameter
typealias DataResultBlock = (Result<Data>) -> ()

/// Operation result block with array of City parameter
typealias CityResultBlock = (Result<[City]>) -> ()

/// Operation result block with array of Weather parameter
typealias WeatherResultBlock = (Result<[Weather]>) -> ()
