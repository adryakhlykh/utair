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

    // MARK: UIKit
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: Internal helpers
    
    func fill(withWeather weather: Weather) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH"
        timeLabel.text = dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(weather.dateAndTime)))
        temperatureLabel.text = weather.temperature.description
    }
}
