//
//  WeatherRequest.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

enum WeatherRequest: Request {
    
    case getAll(Double, Double)
    
    var path: String {
        switch self {
            case .getAll: return RequestURL.weather
        }
    }
    
    var method: RequestMethod {
        switch self {
            case .getAll: return .get
        }
    }
    
    var headers: [String : String]? {
        switch self {
            case .getAll: return nil
        }
    }
    
    var parameters: ModelDictionary? {
        switch self {
            case .getAll(let latitude, let longitude):
                return [
                    HTTPBody.latitude : latitude,
                    HTTPBody.longitude : longitude,
                    HTTPBody.units : WeatherUnits.metric
                ]
        }
    }
}
