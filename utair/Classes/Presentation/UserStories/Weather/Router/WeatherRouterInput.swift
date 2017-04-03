//
//  WeatherRouterInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol WeatherRouterInput {

    /// Метод для перехода в <#ModuleName#>
    ///
    /// - Parameter id: идентификатор Weather объекта
    
    func openModule(withWeatherID id: Int)
}
