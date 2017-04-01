//
//  CityModuleOutput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol CityModuleOutput: class, ModuleOutput {
    
    /// Метод сообщает презентеру что модуль загрузился
    ///
    /// - Parameter module: модуль
    
    func didLoadCityModuleInput(withCityModule module: CityModuleInput)
    
    /// Метод сообщает презентеру что пользователь нажал на ячейку
    ///
    /// - Parameter city: город "Куда"
    
    func didTapOnToCity(withCity city: City)
    
    /// Метод сообщает презентеру что пользователь нажал на ячейку
    ///
    /// - Parameter city: город "Откуда"
    
    func didTapOnFromCity(withCity city: City)
}
