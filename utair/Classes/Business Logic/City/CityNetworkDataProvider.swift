//
//  CityNetworkDataProvider.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class CityNetworkDataProvider: CityDataProvider {
    
    // MARK: City 
    
    let transport: Transport
    
    let deserializer: Deserializer
    
    let mapper: CityMapper
    
    // MARK: Initialization and deinitialization
    
    init(transport: Transport, deserializer: Deserializer, mapper: CityMapper) {
        self.transport = transport
        self.deserializer = deserializer
        self.mapper = mapper
    }
    
    // MARK: CityDataProvider

    func getAll(completionBlock: @escaping CityResultBlock) {
        performInBackground { [weak self] in
            if let request = CityRequest.getAll.urlRequest {
                self?.transport.request(request) { [weak self] result in
                    self?.handleTransportResult(result, completionBlock: completionBlock)
                }
            }
        }
    }
    
    // MARK: Private helpers
    
    private func handleTransportResult(_ result: Result<Data>, completionBlock: @escaping CityResultBlock) {
        switch result {
            case .value(let data): handleTransportData(data, completionBlock: completionBlock)
            case .error(let error): performOnMainThread { completionBlock(Result.error(error)) }
        }
    }
    
    private func handleTransportData(_ data: Data, completionBlock: @escaping CityResultBlock) {
        do {
            let deserealizedData = try deserializer.deserialize(data)
            let dataResponse = try mapper.mapResponse(deserealizedData)
            let cities = try mapper.mapAll(modelDictionaries: dataResponse.data)
            performOnMainThread { completionBlock(Result.value(cities)) }
        } catch {
            performOnMainThread { completionBlock(Result.error(error)) }
        }
    }
}
