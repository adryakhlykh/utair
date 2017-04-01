//
//  CityViewOutput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol CityViewOutput {

    /// Метод сообщает презентеру, что вью готова для работы

    func setupView()
    
    /// Метод сообщает презентеру что пользователь нажал на ячейку
    ///
    /// - Parameter city: объект City
    
    func didTapOnCity(withCity city: City)
    
    /// Метод сообщает презентеру что пользователь ищет город
    ///
    /// - Parameter string: поисковая строка
    
    func didTextFieldTextChange(withSearchString string: String)
}
