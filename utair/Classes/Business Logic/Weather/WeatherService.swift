//
//  WeatherService.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol WeatherService {
    
    /// Метод для получения данных у дата провайдера
    ///
    /// - Parameters:
    ///   - latitude: широта
    ///   - longitude: долгота
    ///   - completionBlock: блок с данными
    
    func getAll(latitude: Double, longitude: Double, completionBlock: @escaping WeatherResultBlock)
}
