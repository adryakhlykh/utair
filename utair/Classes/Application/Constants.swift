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
}

struct RequestURL {
    static let cities = "http://api.meetup.com/2/cities"
}

struct JSONKey {
    static let results = "results"
    struct City {
        static let id = "id"
        static let title = "city"
        static let latitude = "lat"
        static let longitude = "lon"
    }
}

enum Direction {
    case to
    case from
}

