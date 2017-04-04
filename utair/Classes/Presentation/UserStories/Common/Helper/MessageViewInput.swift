//
//  MessageViewInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 04.04.17.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol MessageViewInput {
    
    /// Метод для отображения сообщений загрузки
    ///
    /// - Parameter message: сообщение
    
    func showMessageView(withMessage message: String)
}
