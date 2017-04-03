//
//  WeatherMapper.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol WeatherMapper: Mapper {

    /// Метод для парсинга словаря в модельный объект
    ///
    /// - Parameter modelDictionary: словарь типа ModelDictionary
    /// - Returns: модельный объект Weather

    func map(modelDictionary: ModelDictionary) throws -> Weather

    /// Метод для парсинга массива словарей в массив модельных объектов
    ///
    /// - Parameter modelDictionary: массив словарей типа ModelDictionary
    /// - Returns: массив модельных объектов Weather

    func mapAll(modelDictionaries: [ModelDictionary]) throws -> [Weather]
}
