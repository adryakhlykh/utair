//
//  RouterViewController.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31.03.17.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class RouterViewController: ViewController, RouterTransitionHandler {
    
    // MARK: Properties
    
    var moduleInput: ModuleInput?
    var moduleOutput: ModuleOutput?
    
    // MARK: UIKit
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let configBlock = (sender as? ConfigurationBlockHolder)?.configurationBlock,
            let moduleInput = (segue.destination as? RouterTransitionHandler)?.moduleInput
            else { return }
        if let out = configBlock(moduleInput) {
            moduleInput.setModuleOutput(moduleOutput: out)
        }
    }
}
