//
//  FlightViewInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol FlightViewInput: class {

    
    /// Метод для отображения заголовка
    /// 
    /// - Parameter title: строка заголовка

    func showTitle(withTitle title: String)

    /// Метод для настройки вью

    func setupView()
}
