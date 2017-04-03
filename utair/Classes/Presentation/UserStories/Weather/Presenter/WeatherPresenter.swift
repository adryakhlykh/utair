//
//  WeatherPresenter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class WeatherPresenter: WeatherModuleInput, WeatherViewOutput, WeatherInteractorOutput {

    // MARK: Properties
    
    weak var view: WeatherViewInput!
    var interactor: WeatherInteractorInput!
    var router: WeatherRouterInput!
    private var id = 0

    // MARK: WeatherViewOutput

    func setupView() {
        view.showTitle(withFromCityTitle: "from", toCityTitle: "to", imageName: "icPlaneDirection")
    }

    // MARK: WeatherModuleInput
    
    func configureModule(withFlight flight: Flight) {  }
    
    // MARK: WeatherInteractorOutput 
    
}
