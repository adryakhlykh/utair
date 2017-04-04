//
//  FlightViewController.swift
//  utair
//
//  Created by Anton Dryakhlykh on 31/03/2017.
//  Copyright © 2017 teedee. All rights reserved.
//

import UIKit

class FlightViewController: RouterViewController, FlightViewInput {
    
    // MARK: IBOutlets

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var findButton: FindButton!
    
    // MARK: IBActions
    
    @IBAction func findButtonAction(_ sender: Any) {
        guard let fromCity = adapter?.fromCity,
            let toCity = adapter?.toCity,
            let thereDate = thereDate, thereDate != 0,
            let backDate = backDate, backDate != 0
            else {
                if adapter?.fromCity == nil {
                    output.didGetError(withErrorType: .emptyFromCity)
                } else if adapter?.toCity == nil {
                    output.didGetError(withErrorType: .emptyToCity)
                } else {
                    output.didGetError(withErrorType: .emptyBackDate)
                }
                return
            }
        let flight = Flight(thereCity: fromCity, backCity: toCity, thereDate: thereDate, backDate: backDate)
        output.didTapOnFindButton(withFlight: flight)
    }
    
    @IBAction func unwindToFlight(segue: UIStoryboardSegue) { }
    
	// MARK: Properties
	
    var output: FlightViewOutput!
    private var adapter: FlightAdapter?
    private var thereDate: Int?
    private var backDate: Int?

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output.setupView()
    }

    // MARK: FlightViewInput

    func setupView(withFindButtonTitle title: String) {
        findButton.setTitle(title, for: .normal)
        tableView.backgroundColor = Color.blue
        view.backgroundColor = Color.blue
        let adapter = FlightAdapter(tableView: tableView)
        adapter.fromBlock = { [weak self] title in self?.output.didTapOnFromView(withTitle: title) }
        adapter.toBlock = { [weak self] title in self?.output.didTapOnToView(withTitle: title) }
        adapter.thereDateBlock = { [weak self] date in self?.thereDate = date }
        adapter.backDateBlock = { [weak self] date in self?.backDate = date }
        adapter.errorBlock = { [weak self] error in self?.output.didGetError(withErrorType: error) }
        tableView.dataSource = adapter
        tableView.delegate = adapter
        self.adapter = adapter
        tableView.reloadData()
    }
    
    func setupView(withFromCity city: City) {
        adapter?.fromCity = city
        tableView.reloadData()
    }
    
    func setupView(withToCity city: City) {
        adapter?.toCity = city
        tableView.reloadData()
    }
}
