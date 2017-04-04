//
//  Mapper.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol Mapper {
    
    /// Метод для парсинга данных
    ///
    /// - Parameter modelDictionary: словарь с данными
    /// - Returns: объект типа Response
    
    func mapResponse(_ modelDictionary: ModelDictionary) throws -> Response
}
