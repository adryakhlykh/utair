//
//  Constants.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

let weatherAPIKey = "73c6e19fca36e0fa3ad2e765c10a4726"
typealias ModelDictionary = [String : Any]

struct SegueID {
    static let city = "ShowCity"
    static let unwindToFlight = "unwindToFlight"
    static let weather = "ShowWeather"
}

struct RequestURL {
    static let cities = "http://api.meetup.com/2/cities"
    static let weather = "http://api.openweathermap.org/data/2.5/forecast?APPID=" + weatherAPIKey
}

struct JSONKey {
    static let results = "results"
    static let list = "list"
    
    struct City {
        static let id = "id"
        static let title = "city"
        static let latitude = "lat"
        static let longitude = "lon"
    }
    
    struct Weather {
        static let main = "main"
        static let dateAndTime = "dt"
        static let temperature = "temp"
    }
}

struct HTTPBody {
    static let latitude = "lat"
    static let longitude = "lon"
    static let units = "units"
}

struct WeatherUnits {
    static let metric = "metric"
}

enum Direction {
    case to
    case from
}


