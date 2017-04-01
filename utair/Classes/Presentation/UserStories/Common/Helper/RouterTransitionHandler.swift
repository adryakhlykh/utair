//
//  RouterTransitionHandler.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

protocol RouterTransitionHandler: class {
    weak var moduleInput: ModuleInput? { get set }
    weak var moduleOutput: ModuleOutput? { get set }
    
    /// Метод для перехода в другой модуль с помощью сегвея
    ///
    /// - Parameters:
    ///   - segueIdentifier: идентификатор сегвея
    ///   - configurationBlock: блок, который содержит конфигурацию для настройки модули
    
    func openModule(_ segueIdentifier: String, configurationBlock: ConfigurationBlock?)
}

extension RouterTransitionHandler where Self: UIViewController {
    func openModule(_ segueIdentifier: String, configurationBlock: ConfigurationBlock?) {
        let configurationBlockHolder = ConfigurationBlockHolder(configurationBlock: configurationBlock)
        performSegue(withIdentifier: segueIdentifier, sender: configurationBlockHolder)
    }
}
