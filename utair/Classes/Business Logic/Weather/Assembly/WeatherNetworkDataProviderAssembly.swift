//
//  WeatherNetworkDataProviderAssembly.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//


import Foundation

protocol WeatherNetworkDataProviderAssembly {

    /// Метод для вызова поставщика данных 
    ///
    /// - Returns: Weather поставщик данных

    static func networkDataProvider() -> WeatherDataProvider
}
