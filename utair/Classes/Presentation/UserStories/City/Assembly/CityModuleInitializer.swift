//
//  CityModuleInitializer.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class CityModuleInitializer: NSObject {

	// MARK: IBOutlets
    
    @IBOutlet weak var cityViewController: CityViewController!

    // MARK: NSObject UIKit Additions
    
    override func awakeFromNib() {
        let configurator = CityModuleConfigurator()
        configurator.configureModule(forViewInput: cityViewController)
    }
}
