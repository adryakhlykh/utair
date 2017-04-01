//
//  CityViewInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol CityViewInput: class {

    /// Метод для настройки тейбл вью
    /// 
    /// - Parameter city: массив объектов City

    func setupView(withCities cities: [City])
    
    /// Метод для настройки вью
    ///
    /// - Parameters:
    ///   - placeholder: плейсхолдер для текст филда
    ///   - subtitle: подпись под текстфилдом
    ///   - imageName: название картинки
    ///   - text: текст текстфилда

    func setupView(withPlaceholder placeholder: String, text: String?, subtitle: String, imageName: String)
}
