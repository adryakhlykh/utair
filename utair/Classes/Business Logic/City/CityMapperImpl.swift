//
//  CityMapperImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class CityMapperImpl: MapperImpl, CityMapper {
    func map(modelDictionary: ModelDictionary) throws -> City {
        let id = try modelDictionary.map(JSONKey.City.id) as Int
        let title = try modelDictionary.map(JSONKey.City.title) as String
        let latitude = try modelDictionary.map(JSONKey.City.latitude) as Double
        let longitude = try modelDictionary.map(JSONKey.City.longitude) as Double
        return City(id: id, title: title, latitude: latitude, longitude: longitude)
    }
    
    func mapAll(modelDictionaries: [ModelDictionary]) throws -> [City] {
        return try modelDictionaries.map { try map(modelDictionary: $0) }
    }
}
