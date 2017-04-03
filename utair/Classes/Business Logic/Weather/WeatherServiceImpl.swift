//
//  WeatherServiceImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class WeatherServiceImpl: WeatherService {
    
    // MARK: Constants
    
    private let networkDataProvider: WeatherDataProvider
    
    // MARK: Initialization and deinitialization
    
    init(networkDataProvider: WeatherDataProvider) {
        self.networkDataProvider = networkDataProvider
    }
    
    // MARK: WeatherService
    
    func getAll(latitude: Double, longitude: Double, completionBlock: @escaping WeatherResultBlock) {
        networkDataProvider.getAll(latitude: latitude, longitude: longitude, completionBlock: completionBlock)
    }
}
