//
//  CityRequest.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

enum CityRequest: Request {
    
    case getAll
    
    var path: String {
        switch self {
            case .getAll: return RequestURL.cities
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
            case .getAll: return nil
        }
    }
}
