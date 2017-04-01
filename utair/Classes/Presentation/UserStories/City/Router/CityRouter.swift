//
//  CityRouter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class CityRouter: CityRouterInput {

	// MARK: Properties
    
    weak var viewController: RouterTransitionHandler?

    // MARK: CityRouterInput
    
    func closeModule() {
        viewController?.openModule(SegueID.unwindToFlight, configurationBlock: nil)
    }
}
