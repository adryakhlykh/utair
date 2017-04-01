//
//  CityService.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol CityService {
    
    /// Метод для получения данных у дата провайдера
    ///
    /// - Parameter completionBlock: блок с данными
    
    func getAll(completionBlock: @escaping CityResultBlock)
}
