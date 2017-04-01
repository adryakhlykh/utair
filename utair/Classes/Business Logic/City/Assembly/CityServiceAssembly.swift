//
//  CityServiceAssembly.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol CityServiceAssembly {

    /// Метод для вызова сервиса 
    ///
    /// - Returns: City сервис

    static func service() -> CityService
}
