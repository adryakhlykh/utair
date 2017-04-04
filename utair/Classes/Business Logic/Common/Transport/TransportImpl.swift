//
//  TransportImpl.swift
//  utair
//
//  Created by Anton Dryakhlykh on 02.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import Foundation
import Alamofire

class TransportImpl: Transport {
    
    // MARK: Constants
    
    let manager: Alamofire.SessionManager
    
    // MARK: Initialization and deinitialization
    
    init() {
        let configuration = URLSessionConfiguration.default
        let timeout = 10.0
        configuration.timeoutIntervalForResource = timeout
        manager = Alamofire.SessionManager(
            configuration: configuration,
            serverTrustPolicyManager: nil
        )
    }
    
    // MARK: Transport
    
    func request(_ request: URLRequest, completionBlock: @escaping DataResultBlock) {
        manager.request(request).responseData { response in
            switch response.result {
                case .success(let value): completionBlock(Result.value(value))
                case .failure(let error): completionBlock(Result.error(error))
            }
        }
    }
}
