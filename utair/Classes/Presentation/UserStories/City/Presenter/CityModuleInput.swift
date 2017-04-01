//
//  CityModuleInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol CityModuleInput: class, ModuleInput {

    /// Метод для конфигурации модуля
    ///
    /// - Parameter id: название города "Откуда"

    func configureModule(withFromTitle title: String)
    
    /// Метод для конфигурации модуля
    ///
    /// - Parameter id: название города "Куда"
    
    func configureModule(withToTitle title: String)
}
