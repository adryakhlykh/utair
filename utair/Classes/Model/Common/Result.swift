//
//  Result.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

public enum Result<T> {
    case value(T)
    case error(Error)
}
