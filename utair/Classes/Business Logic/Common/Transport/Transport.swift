//
//  Transport.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol Transport {
    
    /// Метод для сетевого запроса
    ///
    /// - Parameters:
    ///   - request: сетевой запрос
    ///   - completionBlock: блок с данными
    
    func request(_ request: URLRequest, completionBlock: @escaping DataResultBlock)
}
