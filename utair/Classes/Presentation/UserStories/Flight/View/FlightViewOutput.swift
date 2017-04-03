//
//  FlightViewOutput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol FlightViewOutput {

    /// Метод сообщает презентеру, что вью готова для работы

    func setupView()
    
    /// Метод сообщает презентеру, что пользователь нажал на вью "Откуда"
    ///
    /// - Parameter title: название города
    
    func didTapOnFromView(withTitle title: String)
    
    /// Метод сообщает презентеру, что пользователь нажал на вью "Куда"
    ///
    /// - Parameter title: название города
    
    func didTapOnToView(withTitle title: String)
    
    /// Метод сообщает презентеру, что пользователь нажал на кнопку "Найти рейсы"
    ///
    /// - Parameter flight: данные о полете
    
    func didTapOnFindButton(withFlight flight: Flight)
}
