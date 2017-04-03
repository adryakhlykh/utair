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
            else { return }
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

    func setupView() {
        findButton.setTitle("FLIGT.BUTTON.FIND".localized, for: .normal)
        tableView.backgroundColor = Color.blue
        let adapter = FlightAdapter(tableView: tableView)
        adapter.fromBlock = { [weak self] title in self?.output.didTapOnFromView(withTitle: title) }
        adapter.toBlock = { [weak self] title in self?.output.didTapOnToView(withTitle: title) }
        adapter.thereDateBlock = { [weak self] date in self?.thereDate = date }
        adapter.backDateBlock = { [weak self] date in self?.backDate = date }
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
