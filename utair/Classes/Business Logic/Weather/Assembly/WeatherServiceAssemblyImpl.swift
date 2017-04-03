//
//  WeatherServiceAssemblyImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class WeatherServiceAssemblyImpl: WeatherServiceAssembly {
    
    static func service() -> WeatherService {
        return WeatherServiceImpl(networkDataProvider: networkDataProvider())
    }
    
    private static func networkDataProvider() -> WeatherDataProvider {
        return WeatherNetworkDataProviderAssemblyImpl.networkDataProvider()
    }
}
