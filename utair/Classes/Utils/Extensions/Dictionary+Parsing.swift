//
//  Dictionary+Parsing.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

extension Dictionary where Key: CustomStringConvertible {
    func parse<T>(_ fieldName: Key) throws -> T {
        guard let t = self[fieldName] as? T else {
            throw Errors.expected(argument: fieldName.description, ofType: String(describing: T.self))
        }
        return t
    }
    
    func parseOptional<T>(_ fieldName: Key) throws -> T? {
        if self[fieldName] is NSNull || self[fieldName] == nil {
            return nil
        } else {
            guard let t = self[fieldName] as? T else {
                throw Errors.cannotConvertToOptional(argument: fieldName.description, ofType: String(describing: T.self))
            }
            return t
        }
    }
}
