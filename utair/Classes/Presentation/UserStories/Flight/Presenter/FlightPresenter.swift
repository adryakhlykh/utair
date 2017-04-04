//
//  FlightPresenter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class FlightPresenter: FlightViewOutput, CityModuleOutput {

    // MARK: Properties
    
    weak var view: FlightViewInput!
    var router: FlightRouterInput!
    weak var cityModule: CityModuleInput!

    // MARK: FlightViewOutput

    func setupView() { view.setupView(withFindButtonTitle: "FLIGT.BUTTON.FIND".localized) }
    
    func didTapOnFromView(withTitle title: String) {
        router.configureCityModule(withModuleOutput: self)
        cityModule.configureModule(withFromTitle: title)
    }
    
    func didTapOnToView(withTitle title: String) {
        router.configureCityModule(withModuleOutput: self)
        cityModule.configureModule(withToTitle: title)
    }
    
    func didTapOnFindButton(withFlight flight: Flight) { router.openModule(withFlight: flight) }
    
    func didGetError(withErrorType type: ErrorType) {
        switch type {
            case .emptyFromCity: view.showMessageView(withMessage: "ERROR.CITY.FROM".localized)
            case .emptyToCity: view.showMessageView(withMessage: "ERROR.CITY.TO".localized)
            case .emptyBackDate: view.showMessageView(withMessage: "ERROR.DATE.BACK".localized)
            case .passangersGreaterThan9: view.showMessageView(withMessage: "ERROR.PASSANGERS".localized)
            case .babyGreaterThanAdult: view.showMessageView(withMessage: "ERROR.BABY".localized)
        }
    }
    
    // MARK: CityModuleOutput
    
    func didLoadCityModuleInput(withCityModule module: CityModuleInput) { cityModule = module }
    
    func didTapOnFromCity(withCity city: City) { view.setupView(withFromCity: city) }
    
    func didTapOnToCity(withCity city: City) { view.setupView(withToCity: city) }
}
