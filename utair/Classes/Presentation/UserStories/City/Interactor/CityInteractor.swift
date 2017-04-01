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

    // MARK: CityInteractorInput
    
    func getCities() {
        let city0 = City(id: 0, title: "Киров")
        let city1 = City(id: 1, title: "Киров")
        let city2 = City(id: 2, title: "Киров")
        let city3 = City(id: 3, title: "Киров")
        let city4 = City(id: 4, title: "Киров")
        let city5 = City(id: 5, title: "Киров")
        let city6 = City(id: 6, title: "Киров")
        let city7 = City(id: 7, title: "Киров")
        let city8 = City(id: 8, title: "Киров")
        let city9 = City(id: 9, title: "Киров")
        let city10 = City(id: 10, title: "Киров")
        let city11 = City(id: 11, title: "Киров")
        output.didGetCities(withCities: [city0, city1, city2, city3, city4, city5, city6, city7, city8, city9, city10, city11])
    }

    // MARK: Private Helpers
    
}
