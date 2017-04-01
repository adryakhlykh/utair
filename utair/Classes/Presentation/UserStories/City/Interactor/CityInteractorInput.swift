//
//  CityInteractorInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol CityInteractorInput {

	/// Метод для загрузки городов
    
    func getCities()
    
    /// Метод для поиска города
    ///
    /// - Parameter string: поисковая строка
    
    func getCities(withSearchString string: String)
}
