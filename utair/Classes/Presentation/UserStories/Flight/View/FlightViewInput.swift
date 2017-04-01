//
//  FlightViewInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol FlightViewInput: class {

    /// Метод для настройки вью

    func setupView()
    
    /// Метод для настройки вью
    ///
    /// - Parameter city: город "Откуда"
    
    func setupView(withFromCity city: City)
    
    
    /// Метод для настройки вью
    ///
    /// - Parameter city: город "Куда"
    
    func setupView(withToCity city: City)
}
