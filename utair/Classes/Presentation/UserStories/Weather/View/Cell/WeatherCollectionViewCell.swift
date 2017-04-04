//
//  WeatherCollectionViewCell.swift
//  utair
//
//  Created by Anton Dryakhlykh on 04.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!

    // MARK: Internal helpers
    
    func fill(withWeather weather: Weather) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "H"
        timeLabel.text = dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(weather.dateAndTime))) + "WEATHER.TIME".localized
        let temperature = Int(weather.temperature).description
        let plus = "+"
        let minus = "-"
        if temperature.contains(minus) {
            temperatureLabel.text = temperature + " " + "WEATHER.DEGREE".localized
        } else if Int(temperature) == 0 {
            temperatureLabel.text =  temperature + " " + "WEATHER.DEGREE".localized
        } else {
            temperatureLabel.text = plus + temperature + " " + "WEATHER.DEGREE".localized
        }
    }
}
