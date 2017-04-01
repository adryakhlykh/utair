//
//  CityNetworkDataProviderAssemblyImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class CityNetworkDataProviderAssemblyImpl: CityNetworkDataProviderAssembly {
    static func networkDataProvider() -> CityDataProvider {
        return CityNetworkDataProvider(transport: transport(), deserializer: deserializer(), mapper: mapper())
    }
    
    private static func transport() -> Transport {
        return TransportImpl()
    }
    
    private static func deserializer() -> Deserializer {
        return JSONDeserializer()
    }
    
    private static func mapper() -> CityMapper {
        return CityMapperImpl()
    }
}
