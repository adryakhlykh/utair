//
//  CityModuleConfigurator.swift
//  utair
//
//  Created by Anton Dryakhlykh on 01/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class CityModuleConfigurator {

    // MARK: Internal Helpers

    func configureModule<UIViewController>(forViewInput viewInput: UIViewController) {
        if let viewController = viewInput as? CityViewController {
            configure(viewController: viewController)
        }
    }

    // MARK: Private helpers

    private func configure(viewController: CityViewController) {
        let router = CityRouter()
        let presenter = CityPresenter()
        let interactor = CityInteractor()

        router.viewController = viewController

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        interactor.output = presenter

        viewController.output = presenter
        viewController.moduleInput = presenter
    }
}
