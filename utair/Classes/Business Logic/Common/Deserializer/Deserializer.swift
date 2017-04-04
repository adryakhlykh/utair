//
//  Deserializer.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol Deserializer {
    
    /// Метод для десериализации данных
    ///
    /// - Parameter data: данные
    /// - Returns: словарь десериализованных данных
    
    func deserialize(_ data: Data) throws -> ModelDictionary
}
