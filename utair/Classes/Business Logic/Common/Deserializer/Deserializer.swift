//
//  Deserializer.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol Deserializer {
    func deserialize(_ data: Data) throws -> ModelDictionary
}
