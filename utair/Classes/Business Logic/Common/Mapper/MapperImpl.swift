//
//  MapperImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation

class MapperImpl {
    final func mapResponse(_ modelDictionary: ModelDictionary) throws -> Response {
        let data = try modelDictionary.map("items") as [ModelDictionary]
        return Response(data: data)
    }
}
