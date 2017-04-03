//
//  WeatherNetworkDataProvider.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class WeatherNetworkDataProvider: WeatherDataProvider {
    
    // MARK: Weather 
    
    let transport: Transport
    
    let deserializer: Deserializer
    
    let mapper: WeatherMapper
    
    // MARK: Initialization and deinitialization
    
    init(transport: Transport, deserializer: Deserializer, mapper: WeatherMapper) {
        self.transport = transport
        self.deserializer = deserializer
        self.mapper = mapper
    }
    
    // MARK: WeatherDataProvider

    func getAll(latitude: Double, longitude: Double, completionBlock: @escaping WeatherResultBlock) {
        performInBackground { [weak self] in
            if let request = WeatherRequest.getAll(latitude, longitude).urlRequest {
                self?.transport.request(request) { [weak self] result in
                    self?.handleTransportResult(result, completionBlock: completionBlock)
                }
            }
        }
    }
    
    // MARK: Private helpers
    
    private func handleTransportResult(_ result: Result<Data>, completionBlock: @escaping WeatherResultBlock) {
        switch result {
            case .value(let data): handleTransportData(data, completionBlock: completionBlock)
            case .error(let error): performOnMainThread { completionBlock(Result.error(error)) }
        }
    }
    
    private func handleTransportData(_ data: Data, completionBlock: @escaping WeatherResultBlock) {
        do {
            let deserealizedData = try deserializer.deserialize(data)
            let dataResponse = try mapper.mapResponse(deserealizedData)
            let weather = try mapper.mapAll(modelDictionaries: dataResponse.data)
            performOnMainThread { completionBlock(Result.value(weather)) }
        } catch {
            performOnMainThread { completionBlock(Result.error(error)) }
        }
    }
}
