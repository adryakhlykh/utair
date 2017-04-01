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
    
	// MARK: Properties
	
    var output: FlightViewOutput!
    private var adapter: FlightAdapter?

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output.setupView()
    }

    // MARK: FlightViewInput

    func showTitle(withTitle title: String) { self.title = title }

    func setupView() {
        tableView.backgroundColor = Color.blue
        let adapter = FlightAdapter(tableView: tableView)
        tableView.dataSource = adapter
        tableView.delegate = adapter
        self.adapter = adapter
        tableView.reloadData()
    }
}
