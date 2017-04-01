//
//  CityInteractor.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class CityInteractor: CityInteractorInput {

    // MARK: Properties

    weak var output: CityInteractorOutput!
    var cityService: CityService?
    private var cities: [City] = []

    // MARK: CityInteractorInput
    
    func getCities() {
        cityService?.getAll { [weak self] result in self?.didGetAllCitiesResult(result) }
    }
    
    func getCities(withSearchString string: String) {
        if !cities.isEmpty {
            let filteredCities = cities.filter { $0.title.lowercased().contains(string.lowercased()) }
            output.didGetCities(withCities: filteredCities)
        }
    }
    
    // MARK: Private helpers
    
    private func didGetAllCitiesResult(_ result: Result<[City]>) {
        switch result {
            case .value(let cities): didGetAllCities(withCities: cities)
            case .error(let error): didGetAllCitiesError(error)
        }
    }
    
    private func didGetAllCities(withCities cities: [City]) {
        self.cities = cities
        output.didGetCities(withCities: cities)
    }
    
    private func didGetAllCitiesError(_ error: Error) {
        print(error)
    }
}
