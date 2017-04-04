//
//  WeatherNetworkDataProviderAssemblyImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class WeatherNetworkDataProviderAssemblyImpl: WeatherNetworkDataProviderAssembly {
    
    // MARK: WeatherNetworkDataProviderAssembly
    
    static func networkDataProvider() -> WeatherDataProvider {
        return WeatherNetworkDataProvider(transport: transport(), deserializer: deserializer(), mapper: mapper())
    }
    
    // MARK: Private helpers
    
    private static func transport() -> Transport {
        return TransportImpl()
    }
    
    private static func deserializer() -> Deserializer {
        return JSONDeserializer()
    }
    
    private static func mapper() -> WeatherMapper {
        return WeatherMapperImpl()
    }
}
