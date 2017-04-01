//
//  CityServiceImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class CityServiceImpl: CityService {
    
    // MARK: Constants
    
    private let networkDataProvider: CityDataProvider
    
    // MARK: Initialization and deinitialization
    
    init(networkDataProvider: CityDataProvider) {
        self.networkDataProvider = networkDataProvider
    }
    
    // MARK: CityService
    
    func getAll(completionBlock: @escaping CityResultBlock) {
        networkDataProvider.getAll(completionBlock: completionBlock)
    }
}
