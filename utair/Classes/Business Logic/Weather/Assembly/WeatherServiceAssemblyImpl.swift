//
//  WeatherServiceAssemblyImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class WeatherServiceAssemblyImpl: WeatherServiceAssembly {
    
    // MARK: WeatherServiceAssembly
    
    static func service() -> WeatherService {
        return WeatherServiceImpl(networkDataProvider: networkDataProvider())
    }
    
    // MARK: Private helpers
    
    private static func networkDataProvider() -> WeatherDataProvider {
        return WeatherNetworkDataProviderAssemblyImpl.networkDataProvider()
    }
}
