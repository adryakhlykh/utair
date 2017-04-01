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
    
    @IBAction func findButtonAction(_ sender: Any) { }
    
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
        findButton.setTitle("FLIGT.BUTTON.FIND".localized, for: .normal)
        tableView.backgroundColor = Color.blue
        let adapter = FlightAdapter(tableView: tableView)
        tableView.dataSource = adapter
        tableView.delegate = adapter
        self.adapter = adapter
        tableView.reloadData()
    }
}
