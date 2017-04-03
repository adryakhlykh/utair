//
//  WeatherInteractorInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol WeatherInteractorInput {

    /// Метод для загрузки погоды
    ///
    /// - Parameters:
    ///   - latitude: широта
    ///   - longitude: долгота
    
    func getWeather(withLatitude latitude: Double, longitude: Double)
}
