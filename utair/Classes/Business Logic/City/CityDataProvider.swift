//
//  CityDataProvider.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

protocol CityDataProvider: DataProvider {

	/// Метод для получения данных у транспорта
    ///
    /// - Parameter completionBlock: блок с данными

    func getAll(completionBlock: @escaping CityResultBlock)
}
