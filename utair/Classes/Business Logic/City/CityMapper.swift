//
//  CityMapper.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol CityMapper: Mapper {

    /// Метод для парсинга словаря в модельный объект
    ///
    /// - Parameter modelDictionary: словарь типа ModelDictionary
    /// - Returns: модельный объект City

    func map(modelDictionary: ModelDictionary) throws -> City

    /// Метод для парсинга массива словарей в массив модельных объектов
    ///
    /// - Parameter modelDictionary: массив словарей типа ModelDictionary
    /// - Returns: массив модельных объектов City

    func mapAll(modelDictionaries: [ModelDictionary]) throws -> [City]
}
