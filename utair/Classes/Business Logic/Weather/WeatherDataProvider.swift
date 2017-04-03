//
//  WeatherDataProvider.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol WeatherDataProvider: DataProvider {

	/// Метод для получения данных у транспорта
    ///
    /// - Parameters:
    ///   - latitude: широта
    ///   - longitude: долгота
    ///   - completionBlock: блок с данными
    
    func getAll(latitude: Double, longitude: Double, completionBlock: @escaping WeatherResultBlock)
}
