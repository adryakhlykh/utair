//
//  WeatherViewOutput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol WeatherViewOutput {

    /// Метод сообщает презентеру, что вью готова для работы

    func setupView()
    
    /// Метод сообщает презентеру что пользователь нажал на сегмент
    ///
    /// - Parameter direction: направление полета
    
    func didTapOnSegment(withDirection direction: Direction)
}
