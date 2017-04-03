//
//  WeatherModuleInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol WeatherModuleInput: class, ModuleInput {

    /// Метод для конфигурации модуля
    ///
    /// - Parameter flight: данные о полете

    func configureModule(withFlight flight: Flight)
}
