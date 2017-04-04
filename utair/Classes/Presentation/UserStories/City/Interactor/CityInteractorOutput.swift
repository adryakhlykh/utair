//
//  CityInteractorOutput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol CityInteractorOutput: class {
	
	/// Метод передает презентеру список городов
    ///
    /// - Parameter cities: массив городов
    
    func didGetCities(withCities cities: [City])
    
    /// Метод передает презентеру ошибку
    ///
    /// - Parameter error: объект ошибки
    
    func didGetError(withError error: Error)
}
