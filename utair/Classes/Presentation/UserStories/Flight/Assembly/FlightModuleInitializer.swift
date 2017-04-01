//
//  FlightModuleInitializer.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightModuleInitializer: NSObject {

	// MARK: IBOutlets
    
    @IBOutlet weak var flightViewController: FlightViewController!

    // MARK: NSObject UIKit Additions
    
    override func awakeFromNib() {
        let configurator = FlightModuleConfigurator()
        configurator.configureModule(forViewInput: flightViewController)
    }
}
