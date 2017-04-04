//
//  ModuleInput.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

protocol ModuleInput: class {
    
    /// Метод для установки moduluOutput
    ///
    /// - Parameter moduleOutput: объект другого модуля
    
    func setModuleOutput(moduleOutput: ModuleOutput)
}

// MARK: ModuleOutput

extension ModuleInput {
    func setModuleOutput(moduleOutput: ModuleOutput) { }
}
