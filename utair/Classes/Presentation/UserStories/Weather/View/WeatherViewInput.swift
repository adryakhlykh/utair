//
//  WeatherViewInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol WeatherViewInput: class, RequestViewInput, MessageViewInput {
    
    /// Метод для отображения заголовка
    ///
    /// - Parameters:
    ///   - fromCityTitle: название города "Откуда"
    ///   - toCityTitle: название города "Куда"
    ///   - imageName: имя картинки логотипа
    
    func showTitle(withFromCityTitle fromCityTitle: String, toCityTitle: String, imageName: String)
    
    /// Метод для настройки вью
    ///
    /// - Parameter weather: погода
    
    func setupView(withWeather weather: [SortedWeather])
    
    /// Метод для настройки вью
    ///
    /// - Parameters:
    ///   - thereTitle: заголовок "туда"
    ///   - backTitle: заголовок "обратно"
    ///   - imageName: название картинки
    
    func setupView(withThereTitle thereTitle: String, backTitle: String, imageName: String)
}
