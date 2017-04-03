//
//  WeatherMapperImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class WeatherMapperImpl: WeatherMapper {
    func map(modelDictionary: ModelDictionary) throws -> Weather {
        let dateAndTime = try modelDictionary.map(JSONKey.Weather.dateAndTime) as Int
        let main = try modelDictionary.map(JSONKey.Weather.main) as ModelDictionary
        let temperature = try main.map(JSONKey.Weather.temperature) as Double
        return Weather(dateAndTime: dateAndTime, temperature: temperature)
    }
    
    func mapAll(modelDictionaries: [ModelDictionary]) throws -> [Weather] {
        return try modelDictionaries.map { try map(modelDictionary: $0) }
    }
    
    func mapResponse(_ modelDictionary: ModelDictionary) throws -> Response {
        let data = try modelDictionary.map(JSONKey.list) as [ModelDictionary]
        return Response(data: data)
    }
}
