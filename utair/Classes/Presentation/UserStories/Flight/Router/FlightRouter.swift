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
    
    func openModule(withFlight flight: Flight) {
        viewController?.openModule(SegueID.weather) { moduleInput in
            (moduleInput as? WeatherModuleInput)?.configureModule(withFlight: flight)
            return nil
        }
    }
}
