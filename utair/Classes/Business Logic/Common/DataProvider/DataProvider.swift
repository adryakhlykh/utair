//
//  DataProvider.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol DataProvider { }

extension DataProvider {
    func performInBackground(_ block: @escaping () -> ()) {
        OperationQueue().addOperation { block() }
    }
    func performOnMainThread(_ block: @escaping () -> ()) {
        OperationQueue.main.addOperation { block() }
    }
}
