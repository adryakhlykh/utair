//
//  FlightRouterInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol FlightRouterInput {

    /// Метод для перехода в <#ModuleName#>
    ///
    /// - Parameter id: идентификатор Flight объекта
    
    func openModule(withFlightID id: Int)
}
