//
//  WeatherModuleInitializer.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class WeatherModuleInitializer: NSObject {

	// MARK: IBOutlets
    
    @IBOutlet weak var weatherViewController: WeatherViewController!

    // MARK: NSObject UIKit Additions
    
    override func awakeFromNib() {
        let configurator = WeatherModuleConfigurator()
        configurator.configureModule(forViewInput: weatherViewController)
    }
}
