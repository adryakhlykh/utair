//
//  WeatherInteractor.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class WeatherInteractor: WeatherInteractorInput {

    // MARK: Properties

    weak var output: WeatherInteractorOutput!
    var weatherService: WeatherService?

    // MARK: WeatherInteractorInput
    
    func getWeather(withLatitude latitude: Double, longitude: Double) {
        weatherService?.getAll(latitude: latitude, longitude: longitude) {
            [weak self] result in self?.didGetAllWeatherResult(result)
        }
    }
    
    // MARK: Private helpers
    
    private func didGetAllWeatherResult(_ result: Result<[Weather]>) {
        switch result {
            case .value(let weather): didGetAllWeather(withWeather: weather)
            case .error(let error): didGetAllWeatherError(error)
        }
    }
    
    private func didGetAllWeather(withWeather weather: [Weather]) {
        output.didGetWeather(withWeather: weather)
    }
    
    private func didGetAllWeatherError(_ error: Error) {
        print(error)
    }
}
