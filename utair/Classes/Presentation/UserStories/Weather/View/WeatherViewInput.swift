//
//  WeatherViewInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol WeatherViewInput: class {
    
    /// Метод для отображения заголовка
    ///
    /// - Parameters:
    ///   - fromCityTitle: название города "Откуда"
    ///   - toCityTitle: название города "Куда"
    ///   - imageName: имя картинки логотипа
    
    func showTitle(withFromCityTitle fromCityTitle: String, toCityTitle: String, imageName: String)

    /// Метод для настройки вью
    ///
    /// - Parameters:
    ///   - weather: словарь объектов Weather отсортированный по дням
    ///   - thereTitle: заголовок "туда"
    ///   - backTitle: заголовок "обратно"
    
    func setupView(withWeather weather: [SortedWeather], thereTitle: String, backTitle: String)
}
