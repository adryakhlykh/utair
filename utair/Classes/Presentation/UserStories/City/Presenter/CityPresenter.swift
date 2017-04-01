//
//  CityPresenter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class CityPresenter: CityModuleInput, CityViewOutput, CityInteractorOutput {

    // MARK: Properties
    
    weak var view: CityViewInput!
    var interactor: CityInteractorInput!
    var router: CityRouterInput!
    weak var moduleOutput: CityModuleOutput!
    private var direction = Direction.to

    // MARK: CityViewOutput

    func setupView() {
        moduleOutput.didLoadCityModuleInput(withCityModule: self)
        interactor.getCities()
    }
    
    func didTapOnCity(withCity city: City) {
        switch direction {
            case .from: moduleOutput.didTapOnFromCity(withCity: city)
            case .to: moduleOutput.didTapOnToCity(withCity: city)
        }
        router.closeModule()
    }
    
    func didTextFieldTextChange(withSearchString string: String) {
        interactor.getCities(withSearchString: string)
        switch direction {
            case .from:
                view.setupView(withPlaceholder: "FLIGHT.CITY.FROM".localized, text: string, subtitle: "FLIGHT.CITY.DIRECTION".localized, imageName: "icnGlobalDotBig1")
            case .to:
                view.setupView(withPlaceholder: "FLIGHT.CITY.TO".localized, text: string, subtitle: "FLIGHT.CITY.DIRECTION".localized, imageName: "icnGlobalDotBig2")
        }
    }

    // MARK: CityModuleInput
    
    func configureModule(withFromTitle title: String) {
        direction = .from
        if title == "FLIGHT.CITY.FROM".localized || title == "FLIGHT.CITY.TO".localized {
            view.setupView(withPlaceholder: "FLIGHT.CITY.FROM".localized, text: nil, subtitle: "FLIGHT.CITY.DIRECTION".localized, imageName: "icnGlobalDotBig1")
        } else {
            view.setupView(withPlaceholder: "FLIGHT.CITY.FROM".localized, text: title, subtitle: "FLIGHT.CITY.ALL_AIRPORTS".localized, imageName: "icnGlobalDotBig1")
        }
    }

    func configureModule(withToTitle title: String) {
        direction = .to
        if title == "FLIGHT.CITY.TO".localized || title == "FLIGHT.CITY.FROM".localized {
            view.setupView(withPlaceholder: "FLIGHT.CITY.TO".localized, text: nil, subtitle: "FLIGHT.CITY.DIRECTION".localized, imageName: "icnGlobalDotBig2")
        } else {
            view.setupView(withPlaceholder: "FLIGHT.CITY.TO".localized, text: title, subtitle: "FLIGHT.CITY.ALL_AIRPORTS".localized, imageName: "icnGlobalDotBig2")
        }
    }
    
    func setModuleOutput(moduleOutput: ModuleOutput) {
        self.moduleOutput = moduleOutput as? CityModuleOutput
    }
    
    // MARK: CityInteractorOutput 
    
    func didGetCities(withCities cities: [City]) { view.setupView(withCities: cities) }
}
