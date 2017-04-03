//
//  WeatherModuleConfigurator.swift
//  utair
//
//  Created by Anton Dryakhlykh on 03/04/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class WeatherModuleConfigurator {

    // MARK: Internal Helpers

    func configureModule<UIViewController>(forViewInput viewInput: UIViewController) {
        if let viewController = viewInput as? WeatherViewController {
            configure(viewController: viewController)
        }
    }

    // MARK: Private helpers

    private func configure(viewController: WeatherViewController) {
        let router = WeatherRouter()
        let presenter = WeatherPresenter()
        let interactor = WeatherInteractor()

        router.viewController = viewController

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        interactor.output = presenter

        viewController.output = presenter
        viewController.moduleInput = presenter
        viewController.titleView = NavigationBarTitleView()
    }
}
