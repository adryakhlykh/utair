//
//  FlightRouter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class FlightRouter: FlightRouterInput {

	// MARK: Properties
    
    weak var viewController: RouterTransitionHandler?

    // MARK: FlightRouterInput
    
    func configureCityModule(withModuleOutput moduleOutput: CityModuleOutput) {
        viewController?.openModule(SegueID.city) { _ in
            return moduleOutput
        }
    }
}
