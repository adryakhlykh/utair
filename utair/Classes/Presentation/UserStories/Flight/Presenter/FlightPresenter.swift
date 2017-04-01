//
//  FlightPresenter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class FlightPresenter: FlightModuleInput, FlightViewOutput, FlightInteractorOutput, CityModuleOutput {

    // MARK: Properties
    
    weak var view: FlightViewInput!
    var interactor: FlightInteractorInput!
    var router: FlightRouterInput!
    weak var cityModule: CityModuleInput!
    private var id = 0

    // MARK: FlightViewOutput

    func setupView() {
        view.setupView()
    }
    
    func didTapOnFromView(withTitle title: String) {
        router.configureCityModule(withModuleOutput: self)
        cityModule.configureModule(withFromTitle: title)
    }
    
    func didTapOnToView(withTitle title: String) {
        router.configureCityModule(withModuleOutput: self)
        cityModule.configureModule(withToTitle: title)
    }

    // MARK: FlightModuleInput
    
    func configureModule(withID id: Int) { self.id = id }

    // MARK: FlightInteractorOutput 
    
    // MARK: CityModuleOutput
    
    func didLoadCityModuleInput(withCityModule module: CityModuleInput) { cityModule = module }
    
    func didTapOnFromCity(withCity city: City) {
        view.setupView(withFromCity: city)
    }
    
    func didTapOnToCity(withCity city: City) {
        view.setupView(withToCity: city)
        
    }
}
