//
//  WeatherInteractorOutput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol WeatherInteractorOutput: class {
	
    /// Метод передает презентеру погоду
    ///
    /// - Parameter weather: массив объектов погоды
    
    func didGetWeather(withWeather weather: [Weather])
    
    /// Метод передает презентеру ошибку
    ///
    /// - Parameter error: объект ошибки
    
    func didGetError(withError error: Error)
}
