//
//  CityNetworkDataProviderAssembly.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//


import Foundation

protocol CityNetworkDataProviderAssembly {

    /// Метод для вызова поставщика данных 
    ///
    /// - Returns: City поставщик данных

    static func networkDataProvider() -> CityDataProvider
}
