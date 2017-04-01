//
//  FlightRouterInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol FlightRouterInput {

    /// Метод для конфигурации модуля выбора города
    ///
    /// - Parameter moduleOutput: модуль выбора города информации
    
    func configureCityModule(withModuleOutput moduleOutput: CityModuleOutput)
}
