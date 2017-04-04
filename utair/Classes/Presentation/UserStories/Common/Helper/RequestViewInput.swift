//
//  RequestViewInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 04.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol RequestViewInput {
    
    /// Метод для отображения спиннера загрузки
    
    func startRequest()
    
    /// Метод для скрытия спиннера загрузки
    
    func endRequest()
}
