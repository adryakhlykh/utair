//
//  JSONDeserializer.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class JSONDeserializer: Deserializer {
    func deserialize(_ data: Data) throws -> ModelDictionary {
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        guard let modelDictionary = json as? ModelDictionary else {
            throw Errors.invalidJSON
        }
        return modelDictionary
    }
}
