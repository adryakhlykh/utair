//
//  FlightModuleInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol FlightModuleInput: class, ModuleInput {

    /// Метод для конфигурации модуля
    ///
    /// - Parameter id: идентификатор <#ModuleName#> объекта

    func configureModule(withID id: Int)
}
