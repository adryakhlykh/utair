//
//  WeatherServiceAssembly.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol WeatherServiceAssembly {

    /// Метод для вызова сервиса 
    ///
    /// - Returns: Weather сервис

    static func service() -> WeatherService
}
