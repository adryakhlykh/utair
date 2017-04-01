//
//  CityServiceAssemblyImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class CityServiceAssemblyImpl: CityServiceAssembly {
    
    static func service() -> CityService {
        return CityServiceImpl(networkDataProvider: networkDataProvider())
    }
    
    private static func networkDataProvider() -> CityDataProvider {
        return CityNetworkDataProviderAssemblyImpl.networkDataProvider()
    }
}
