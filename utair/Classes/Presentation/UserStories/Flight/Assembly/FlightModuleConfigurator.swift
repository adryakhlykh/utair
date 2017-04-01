//
//  FlightModuleConfigurator.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightModuleConfigurator {

    // MARK: Internal Helpers

    func configureModule<UIViewController>(forViewInput viewInput: UIViewController) {
        if let viewController = viewInput as? FlightViewController {
            configure(viewController: viewController)
        }
    }

    // MARK: Private helpers

    private func configure(viewController: FlightViewController) {
        let router = FlightRouter()
        let presenter = FlightPresenter()
        let interactor = FlightInteractor()

        router.viewController = viewController

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        interactor.output = presenter

        viewController.output = presenter
        viewController.moduleInput = presenter
    }
}
