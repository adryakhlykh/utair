//
//  FlightPresenter.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

class FlightPresenter: FlightModuleInput, FlightViewOutput, FlightInteractorOutput {

    // MARK: Properties
    
    weak var view: FlightViewInput!
    var interactor: FlightInteractorInput!
    var router: FlightRouterInput!
    private var id = 0

    // MARK: FlightViewOutput

    func setupView() {
    	view.showTitle(withTitle: "TITLE.FLIGHT".localized)
        view.setupView()
    }

    // MARK: FlightModuleInput
    
    func configureModule(withID id: Int) { self.id = id }

    // MARK: FlightInteractorOutput 
    
}
