//
//  Errors.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

enum Errors: Error {
    case invalidJSON
    case invalidSerialization
    case expected(argument: String, ofType: String)
    case cannotConvertToOptional(argument: String, ofType: String)
    case serverError(String)
}
