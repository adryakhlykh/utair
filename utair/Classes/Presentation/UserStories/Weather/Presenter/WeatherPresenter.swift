//
//  WeatherPresenter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class WeatherPresenter: WeatherModuleInput, WeatherViewOutput, WeatherInteractorOutput {

    // MARK: Properties
    
    weak var view: WeatherViewInput!
    var interactor: WeatherInteractorInput!
    private var flight: Flight?

    // MARK: WeatherViewOutput

    func setupView() {
        if let flight = flight {
            let city = flight.thereCity
            view.startRequest()
            interactor.getWeather(withLatitude: city.latitude, longitude: city.longitude)
            view.showTitle(withFromCityTitle: flight.thereCity.title, toCityTitle: flight.backCity.title, imageName: "icPlaneDirection")
            view.setupView(withThereTitle: "FLIGHT.DATE.THERE".localized, backTitle: "FLIGHT.DATE.BACK".localized, imageName: "icPlaneDirection")
        }
    }
    
    func didTapOnSegment(withDirection direction: Direction) {
        view.startRequest()
        if let flight = flight {
            switch direction {
                case .from:
                    interactor.getWeather(withLatitude: flight.backCity.latitude, longitude: flight.backCity.longitude)
                case .to:
                    interactor.getWeather(withLatitude: flight.thereCity.latitude, longitude: flight.thereCity.longitude)
            }
        }
    }

    // MARK: WeatherModuleInput
    
    func configureModule(withFlight flight: Flight) { self.flight = flight }
    
    // MARK: WeatherInteractorOutput 
    
    func didGetWeather(withWeather weather: [Weather]) {
        let sortedWeather = sortByDate(withWeather: weather)
        view.endRequest()
        view.setupView(withWeather: sortedWeather)
    }
    
    func didGetError(withError error: Error) {
        view.endRequest()
        if error is Errors {
            print(error)
        } else {
            view.showMessageView(withMessage: error.localizedDescription)
        }
    }
    
    // MARK: Private helpers
    
    private func sortByDate(withWeather weather: [Weather]) -> [SortedWeather] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let firstDate = dateFormatter.string(from: Date())
        let secondDate = dateFormatter.string(from: Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date())
        let thirdDate = dateFormatter.string(from: Calendar.current.date(byAdding: .day, value: 2, to: Date()) ?? Date())
        let fourthDate = dateFormatter.string(from: Calendar.current.date(byAdding: .day, value: 3, to: Date()) ?? Date())
        let fifthDate = dateFormatter.string(from: Calendar.current.date(byAdding: .day, value: 4, to: Date()) ?? Date())
        let firstDay = weather.filter {
            dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval($0.dateAndTime))) == firstDate
        }
        let secondDay = weather.filter {
            dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval($0.dateAndTime))) == secondDate
        }
        let thirdDay = weather.filter {
            dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval($0.dateAndTime))) == thirdDate
        }
        let fourthDay = weather.filter {
            dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval($0.dateAndTime))) == fourthDate
        }
        let fifthDay = weather.filter {
            dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval($0.dateAndTime))) == fifthDate
        }
        let sortedArray = [
            SortedWeather(id: 0, dayName: firstDate, weather: firstDay),
            SortedWeather(id: 1, dayName: secondDate, weather: secondDay),
            SortedWeather(id: 2, dayName: thirdDate, weather: thirdDay),
            SortedWeather(id: 3, dayName: fourthDate, weather: fourthDay),
            SortedWeather(id: 4, dayName: fifthDate, weather: fifthDay)
        ]
        return sortedArray
    }
}
